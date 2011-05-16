package com.neudesic.samples;

import java.io.BufferedReader;
import java.io.InputStreamReader;

import org.apache.http.HttpEntity;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONArray;
import org.json.JSONObject;
import org.ksoap2.SoapEnvelope;
import org.ksoap2.serialization.SoapObject;
import org.ksoap2.serialization.SoapPrimitive;
import org.ksoap2.serialization.SoapSerializationEnvelope;
import org.ksoap2.transport.HttpTransportSE;
import org.odata4j.consumer.ODataConsumer;
import org.restlet.ext.odata.Query;

import sessionmodel.Session;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

public class Main extends Activity {
	
	private AlertDialog alertDialog;
	private String restResult;
	private HttpEntity restEntity;
	
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        
        // declare the Alert dialog box
        alertDialog = new AlertDialog.Builder(this).create();
        
        // declare the REST service button
        Button restButton = (Button)this.findViewById(R.id.button1);
        restButton.setOnClickListener(restButtonClicked);
        
        // declare the SOAP service button
        Button soapButton = (Button)this.findViewById(R.id.button2);
        soapButton.setOnClickListener(soapButtonClicked);
        
        // declare the ODATA service button
        Button odataButton = (Button)this.findViewById(R.id.button3);
        odataButton.setOnClickListener(odataButtonClicked);
        
    }
    
    private OnClickListener restButtonClicked = new OnClickListener(){
		public void onClick(View v) {			
			
			HttpClient httpClient = new DefaultHttpClient();
			HttpGet request = new HttpGet("http://sguest01/TechEdDemoMVC/Services/REST.svc/Sessions");
			
			try
			{
				restEntity = httpClient.execute(request).getEntity();
				restResult = new BufferedReader(new InputStreamReader(restEntity.getContent())).readLine();
				
				JSONArray jArray = new JSONArray(restResult);
				String message = "There are currently "+jArray.length()+" sessions occuring at this time.";
				alertDialog.setTitle("Session Detail");
				alertDialog.setMessage(message);
				alertDialog.setButton("OK", new DialogInterface.OnClickListener() {
					public void onClick(DialogInterface dialog, int which) {
						return;
					}
				});
				alertDialog.show();
			
				// Dump all of the JSON sessions to the console
				for(int i=0; i<jArray.length(); i++)
				{
					JSONObject session = jArray.getJSONObject(i);
					Log.i("Session retrieved", "Code: "+session.getString("Code")+" - "+session.getString("Title"));
				}
			
								
			}
			catch(Exception e)
			{
				restResult = e.toString();
				alertDialog.setTitle("Exception");
				alertDialog.setMessage(restResult);
				alertDialog.setButton("OK", new DialogInterface.OnClickListener() {
					public void onClick(DialogInterface dialog, int which) {
						return;
					}
				});
				alertDialog.show();
			}
		}
    };
    
    private OnClickListener soapButtonClicked = new OnClickListener(){
		public void onClick(View v) {
			
			//define web service variables
			String SOAP_ACTION = "http://tempuri.org/ISOAP/GetTitleForCode";
		    String METHOD_NAME = "GetTitleForCode";
		    String NAMESPACE = "http://tempuri.org/";
		    String URL = "http://sguest01/TechEdDemoMVC/Services/SOAP.svc";
		    
		    try
		    {
		    	SoapObject request = new SoapObject(NAMESPACE, METHOD_NAME);
		    	request.addProperty("code","COS315");
		    	SoapSerializationEnvelope env = new SoapSerializationEnvelope(SoapEnvelope.VER11);
		    	env.dotNet = true;
		    	env.setOutputSoapObject(request);
		    	
		    	HttpTransportSE transport = new HttpTransportSE(URL);
		    	transport.call(SOAP_ACTION, env);
		    	SoapPrimitive returnedTitle = (SoapPrimitive)env.getResponse();

				alertDialog.setTitle("Session Title");
				alertDialog.setMessage(returnedTitle.toString());
				alertDialog.setButton("OK", new DialogInterface.OnClickListener() {
					public void onClick(DialogInterface dialog, int which) {
						return;
					}
				});
				alertDialog.show();
		    }
		    catch (Exception e)
		    {
				restResult = e.toString();
				alertDialog.setTitle("Exception");
				alertDialog.setMessage(restResult);
				alertDialog.setButton("OK", new DialogInterface.OnClickListener() {
					public void onClick(DialogInterface dialog, int which) {
						return;
					}
				});
				alertDialog.show();
		    }
		    
		}
    };
    
    private OnClickListener odataButtonClicked = new OnClickListener(){
		public void onClick(View v) {
		
			try
			{				
				// call the restlet generated proxy
				TrmobileWebModelsService service = new TrmobileWebModelsService();
				Query<sessionmodel.Session> query = service.createSessionQuery("/Sessions?$filter=startswith(Code,'DPR')%20eq%20true");
				String message="";
				for (Session session : query)
				{
					message += session.getCode()+" - "+session.getTitle()+"   ";
					alertDialog.setTitle("Session Detail");
					alertDialog.setMessage(message);
					alertDialog.setButton("OK", new DialogInterface.OnClickListener() {
						public void onClick(DialogInterface dialog, int which) {
							return;
						}
					});
					alertDialog.show();
				}
			}
		    catch (Exception e)
		    {
				restResult = e.toString();
				alertDialog.setTitle("Exception");
				alertDialog.setMessage(restResult);
				alertDialog.setButton("OK", new DialogInterface.OnClickListener() {
					public void onClick(DialogInterface dialog, int which) {
						return;
					}
				});
				alertDialog.show();
		    }
			
		}
    };
	
}