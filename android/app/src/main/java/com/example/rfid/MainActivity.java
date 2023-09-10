

package com.example.rfid.driver;

import androidx.annotation.NonNull;
import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.MethodChannel;

import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.BatteryManager;
import android.os.Build.VERSION;
import android.os.Build.VERSION_CODES;
import android.os.Bundle;

import android.widget.Toast;

import com.uhf.base.UHFManager;
import com.uhf.base.UHFModuleType;
import android.os.SystemClock;

import java.util.*;

// import com.example.rfid.driver.Driver;
// import com.example.rfid.driver.RfidDriver;

public class MainActivity extends FlutterActivity {
  private static final String CHANNEL = "samples.flutter.dev/battery";

  UHFManager uhfmanager;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		
		
		
	}

  @Override
  public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
  super.configureFlutterEngine(flutterEngine);
    new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), CHANNEL)
        .setMethodCallHandler(
          (call, result) -> {
  // This method is invoked on the main thread.

  if(call.method.equals("initRHID")){

    uhfmanager = UHFManager.getUHFImplSigleInstance(UHFModuleType.SLR_MODULE); //Instantiatethe operation class
    boolean ifsucesss = uhfmanager.powerOn(); //Power on the module
    
        if (!ifsucesss) {
      result.success("Не включился");
    }
    //buf.clear();

    int inventoryMode = call.argument("inventoryMode");
    SystemClock.sleep(1000);
    uhfmanager.readTagModeSet(0,0,0,0); //Set the returned data type
    uhfmanager.slrInventoryModeSet(inventoryMode); //Set inventory mode
    uhfmanager.startInventoryTag(); //Start inventory
    boolean ifInventory = true;
    SystemClock.sleep(1000);
    // new Thread(new Runnable() { //Start the thread to receive tag dat
      
    //   @Override
    //   public void run() {

    //   uhfmanager.stopInventory();//stop inventory
    // ifInventory = false;//end inventory thread
        
          // String[] buf = uhfmanager.readTagFromBuffer();
          // result.success(Arrays.toString(buf));
      //  }
      // }).start();
      result.success("Включился");
  }

  if(call.method.equals("getRHID")){

    
        
          String[] buf = uhfmanager.readTagFromBuffer();
          result.success(Arrays.toString(buf));

   
  }

  if(call.method.equals("endRHID")){

        uhfmanager.stopInventory();
        result.notImplemented();
  }



  if (call.method.equals("getBatteryLevel")) {
    int batteryLevel = getBatteryLevel();

    if (batteryLevel != -1) {
      result.success(batteryLevel);
    } else {
      result.error("UNAVAILABLE", "Battery level not available.", null);
    }
  } 
  else {
    result.notImplemented();
  }
}
        );
  }

 private int getBatteryLevel() {
  int batteryLevel = -1;
  if (VERSION.SDK_INT >= VERSION_CODES.LOLLIPOP) {
    BatteryManager batteryManager = (BatteryManager) getSystemService(BATTERY_SERVICE);
    batteryLevel = batteryManager.getIntProperty(BatteryManager.BATTERY_PROPERTY_CAPACITY);
  } else {
    Intent intent = new ContextWrapper(getApplicationContext()).
        registerReceiver(null, new IntentFilter(Intent.ACTION_BATTERY_CHANGED));
    batteryLevel = (intent.getIntExtra(BatteryManager.EXTRA_LEVEL, -1) * 100) /
        intent.getIntExtra(BatteryManager.EXTRA_SCALE, -1);
  }

  return batteryLevel;
}



}