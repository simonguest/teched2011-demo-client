using System;
using System.Collections.Generic;
using System.Linq;
using MonoTouch.Foundation;
using MonoTouch.UIKit;

using tempuri.org;
using System.ServiceModel;
using System.ServiceModel.Web;

namespace iPadDemo2
{
	public class Application
	{
		static void Main (string[] args)
		{
			UIApplication.Main (args);
		}
	}

	// The name AppDelegate is referenced in the MainWindow.xib file.
	public partial class AppDelegate : UIApplicationDelegate
	{
		private SOAPClient c;
		
		// This method is invoked when the application has loaded its UI and its ready to run
		public override bool FinishedLaunching (UIApplication app, NSDictionary options)
		{
			button.TouchUpInside += HandleButtonTouchUpInside;
			window.MakeKeyAndVisible ();
		
			return true;
		}

		void HandleButtonTouchUpInside (object sender, EventArgs e)
		{
			label.Text = "Calling Service...";
			c = new SOAPClient(new BasicHttpBinding(), new EndpointAddress("http://sguest01/TechEdDemoMVC/Services/SOAP.svc"));
			c.Open();
			c.GetTitleForCodeCompleted += HandleCGetTitleForCodeCompleted;
			c.GetTitleForCodeAsync("DPR304");
			// Not sure why this demo doesn't work async
			System.Threading.Thread.Sleep(5000);
		}

		void HandleCGetTitleForCodeCompleted (object sender, GetTitleForCodeCompletedEventArgs e)
		{
			label.Text = e.Result.ToString();
		}
	}
}

