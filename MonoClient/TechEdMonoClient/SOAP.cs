//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.1
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

[assembly: System.Runtime.Serialization.ContractNamespaceAttribute("http://tempuri.org", ClrNamespace="tempuri.org")]

// 
// This code was auto-generated by slsvcutil, version 4.0.50826.0
// 
namespace tempuri.org
{
    using System.Runtime.Serialization;
    
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="SessionSummary", Namespace="http://tempuri.org")]
    public partial class SessionSummary : object
    {
        
        private string CodeField;
        
        private string PrimarySpeakerField;
        
        private string TitleField;
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Code
        {
            get
            {
                return this.CodeField;
            }
            set
            {
                this.CodeField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string PrimarySpeaker
        {
            get
            {
                return this.PrimarySpeakerField;
            }
            set
            {
                this.PrimarySpeakerField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Title
        {
            get
            {
                return this.TitleField;
            }
            set
            {
                this.TitleField = value;
            }
        }
    }
}


[System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
[System.ServiceModel.ServiceContractAttribute(ConfigurationName="ISOAP")]
public interface ISOAP
{
    
    [System.ServiceModel.OperationContractAttribute(AsyncPattern=true, Action="http://tempuri.org/ISOAP/GetSessions", ReplyAction="http://tempuri.org/ISOAP/GetSessionsResponse")]
    System.IAsyncResult BeginGetSessions(System.AsyncCallback callback, object asyncState);
    
    tempuri.org.SessionSummary[] EndGetSessions(System.IAsyncResult result);
    
    [System.ServiceModel.OperationContractAttribute(AsyncPattern=true, Action="http://tempuri.org/ISOAP/GetCurrentSessionCode", ReplyAction="http://tempuri.org/ISOAP/GetCurrentSessionCodeResponse")]
    System.IAsyncResult BeginGetCurrentSessionCode(System.AsyncCallback callback, object asyncState);
    
    string EndGetCurrentSessionCode(System.IAsyncResult result);
    
    [System.ServiceModel.OperationContractAttribute(AsyncPattern=true, Action="http://tempuri.org/ISOAP/GetTitleForCode", ReplyAction="http://tempuri.org/ISOAP/GetTitleForCodeResponse")]
    System.IAsyncResult BeginGetTitleForCode(string code, System.AsyncCallback callback, object asyncState);
    
    string EndGetTitleForCode(System.IAsyncResult result);
}

[System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
public interface ISOAPChannel : ISOAP, System.ServiceModel.IClientChannel
{
}

[System.Diagnostics.DebuggerStepThroughAttribute()]
[System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
public partial class GetSessionsCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs
{
    
    private object[] results;
    
    public GetSessionsCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
            base(exception, cancelled, userState)
    {
        this.results = results;
    }
    
    public tempuri.org.SessionSummary[] Result
    {
        get
        {
            base.RaiseExceptionIfNecessary();
            return ((tempuri.org.SessionSummary[])(this.results[0]));
        }
    }
}

[System.Diagnostics.DebuggerStepThroughAttribute()]
[System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
public partial class GetCurrentSessionCodeCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs
{
    
    private object[] results;
    
    public GetCurrentSessionCodeCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
            base(exception, cancelled, userState)
    {
        this.results = results;
    }
    
    public string Result
    {
        get
        {
            base.RaiseExceptionIfNecessary();
            return ((string)(this.results[0]));
        }
    }
}

[System.Diagnostics.DebuggerStepThroughAttribute()]
[System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
public partial class GetTitleForCodeCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs
{
    
    private object[] results;
    
    public GetTitleForCodeCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
            base(exception, cancelled, userState)
    {
        this.results = results;
    }
    
    public string Result
    {
        get
        {
            base.RaiseExceptionIfNecessary();
            return ((string)(this.results[0]));
        }
    }
}

[System.Diagnostics.DebuggerStepThroughAttribute()]
[System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
public partial class SOAPClient : System.ServiceModel.ClientBase<ISOAP>, ISOAP
{
    
    private BeginOperationDelegate onBeginGetSessionsDelegate;
    
    private EndOperationDelegate onEndGetSessionsDelegate;
    
    private System.Threading.SendOrPostCallback onGetSessionsCompletedDelegate;
    
    private BeginOperationDelegate onBeginGetCurrentSessionCodeDelegate;
    
    private EndOperationDelegate onEndGetCurrentSessionCodeDelegate;
    
    private System.Threading.SendOrPostCallback onGetCurrentSessionCodeCompletedDelegate;
    
    private BeginOperationDelegate onBeginGetTitleForCodeDelegate;
    
    private EndOperationDelegate onEndGetTitleForCodeDelegate;
    
    private System.Threading.SendOrPostCallback onGetTitleForCodeCompletedDelegate;
    
    private BeginOperationDelegate onBeginOpenDelegate;
    
    private EndOperationDelegate onEndOpenDelegate;
    
    private System.Threading.SendOrPostCallback onOpenCompletedDelegate;
    
    private BeginOperationDelegate onBeginCloseDelegate;
    
    private EndOperationDelegate onEndCloseDelegate;
    
    private System.Threading.SendOrPostCallback onCloseCompletedDelegate;
    
    public SOAPClient()
    {
    }
    
    public SOAPClient(string endpointConfigurationName) : 
            base(endpointConfigurationName)
    {
    }
    
    public SOAPClient(string endpointConfigurationName, string remoteAddress) : 
            base(endpointConfigurationName, remoteAddress)
    {
    }
    
    public SOAPClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
            base(endpointConfigurationName, remoteAddress)
    {
    }
    
    public SOAPClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
            base(binding, remoteAddress)
    {
    }
    
    public System.Net.CookieContainer CookieContainer
    {
        get
        {
            System.ServiceModel.Channels.IHttpCookieContainerManager httpCookieContainerManager = this.InnerChannel.GetProperty<System.ServiceModel.Channels.IHttpCookieContainerManager>();
            if ((httpCookieContainerManager != null))
            {
                return httpCookieContainerManager.CookieContainer;
            }
            else
            {
                return null;
            }
        }
        set
        {
            System.ServiceModel.Channels.IHttpCookieContainerManager httpCookieContainerManager = this.InnerChannel.GetProperty<System.ServiceModel.Channels.IHttpCookieContainerManager>();
            if ((httpCookieContainerManager != null))
            {
                httpCookieContainerManager.CookieContainer = value;
            }
            else
            {
                throw new System.InvalidOperationException("Unable to set the CookieContainer. Please make sure the binding contains an HttpC" +
                        "ookieContainerBindingElement.");
            }
        }
    }
    
    public event System.EventHandler<GetSessionsCompletedEventArgs> GetSessionsCompleted;
    
    public event System.EventHandler<GetCurrentSessionCodeCompletedEventArgs> GetCurrentSessionCodeCompleted;
    
    public event System.EventHandler<GetTitleForCodeCompletedEventArgs> GetTitleForCodeCompleted;
    
    public event System.EventHandler<System.ComponentModel.AsyncCompletedEventArgs> OpenCompleted;
    
    public event System.EventHandler<System.ComponentModel.AsyncCompletedEventArgs> CloseCompleted;
    
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    System.IAsyncResult ISOAP.BeginGetSessions(System.AsyncCallback callback, object asyncState)
    {
        return base.Channel.BeginGetSessions(callback, asyncState);
    }
    
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    tempuri.org.SessionSummary[] ISOAP.EndGetSessions(System.IAsyncResult result)
    {
        return base.Channel.EndGetSessions(result);
    }
    
    private System.IAsyncResult OnBeginGetSessions(object[] inValues, System.AsyncCallback callback, object asyncState)
    {
        return ((ISOAP)(this)).BeginGetSessions(callback, asyncState);
    }
    
    private object[] OnEndGetSessions(System.IAsyncResult result)
    {
        tempuri.org.SessionSummary[] retVal = ((ISOAP)(this)).EndGetSessions(result);
        return new object[] {
                retVal};
    }
    
    private void OnGetSessionsCompleted(object state)
    {
        if ((this.GetSessionsCompleted != null))
        {
            InvokeAsyncCompletedEventArgs e = ((InvokeAsyncCompletedEventArgs)(state));
            this.GetSessionsCompleted(this, new GetSessionsCompletedEventArgs(e.Results, e.Error, e.Cancelled, e.UserState));
        }
    }
    
    public void GetSessionsAsync()
    {
        this.GetSessionsAsync(null);
    }
    
    public void GetSessionsAsync(object userState)
    {
        if ((this.onBeginGetSessionsDelegate == null))
        {
            this.onBeginGetSessionsDelegate = new BeginOperationDelegate(this.OnBeginGetSessions);
        }
        if ((this.onEndGetSessionsDelegate == null))
        {
            this.onEndGetSessionsDelegate = new EndOperationDelegate(this.OnEndGetSessions);
        }
        if ((this.onGetSessionsCompletedDelegate == null))
        {
            this.onGetSessionsCompletedDelegate = new System.Threading.SendOrPostCallback(this.OnGetSessionsCompleted);
        }
        base.InvokeAsync(this.onBeginGetSessionsDelegate, null, this.onEndGetSessionsDelegate, this.onGetSessionsCompletedDelegate, userState);
    }
    
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    System.IAsyncResult ISOAP.BeginGetCurrentSessionCode(System.AsyncCallback callback, object asyncState)
    {
        return base.Channel.BeginGetCurrentSessionCode(callback, asyncState);
    }
    
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    string ISOAP.EndGetCurrentSessionCode(System.IAsyncResult result)
    {
        return base.Channel.EndGetCurrentSessionCode(result);
    }
    
    private System.IAsyncResult OnBeginGetCurrentSessionCode(object[] inValues, System.AsyncCallback callback, object asyncState)
    {
        return ((ISOAP)(this)).BeginGetCurrentSessionCode(callback, asyncState);
    }
    
    private object[] OnEndGetCurrentSessionCode(System.IAsyncResult result)
    {
        string retVal = ((ISOAP)(this)).EndGetCurrentSessionCode(result);
        return new object[] {
                retVal};
    }
    
    private void OnGetCurrentSessionCodeCompleted(object state)
    {
        if ((this.GetCurrentSessionCodeCompleted != null))
        {
            InvokeAsyncCompletedEventArgs e = ((InvokeAsyncCompletedEventArgs)(state));
            this.GetCurrentSessionCodeCompleted(this, new GetCurrentSessionCodeCompletedEventArgs(e.Results, e.Error, e.Cancelled, e.UserState));
        }
    }
    
    public void GetCurrentSessionCodeAsync()
    {
        this.GetCurrentSessionCodeAsync(null);
    }
    
    public void GetCurrentSessionCodeAsync(object userState)
    {
        if ((this.onBeginGetCurrentSessionCodeDelegate == null))
        {
            this.onBeginGetCurrentSessionCodeDelegate = new BeginOperationDelegate(this.OnBeginGetCurrentSessionCode);
        }
        if ((this.onEndGetCurrentSessionCodeDelegate == null))
        {
            this.onEndGetCurrentSessionCodeDelegate = new EndOperationDelegate(this.OnEndGetCurrentSessionCode);
        }
        if ((this.onGetCurrentSessionCodeCompletedDelegate == null))
        {
            this.onGetCurrentSessionCodeCompletedDelegate = new System.Threading.SendOrPostCallback(this.OnGetCurrentSessionCodeCompleted);
        }
        base.InvokeAsync(this.onBeginGetCurrentSessionCodeDelegate, null, this.onEndGetCurrentSessionCodeDelegate, this.onGetCurrentSessionCodeCompletedDelegate, userState);
    }
    
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    System.IAsyncResult ISOAP.BeginGetTitleForCode(string code, System.AsyncCallback callback, object asyncState)
    {
        return base.Channel.BeginGetTitleForCode(code, callback, asyncState);
    }
    
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    string ISOAP.EndGetTitleForCode(System.IAsyncResult result)
    {
        return base.Channel.EndGetTitleForCode(result);
    }
    
    private System.IAsyncResult OnBeginGetTitleForCode(object[] inValues, System.AsyncCallback callback, object asyncState)
    {
        string code = ((string)(inValues[0]));
        return ((ISOAP)(this)).BeginGetTitleForCode(code, callback, asyncState);
    }
    
    private object[] OnEndGetTitleForCode(System.IAsyncResult result)
    {
        string retVal = ((ISOAP)(this)).EndGetTitleForCode(result);
        return new object[] {
                retVal};
    }
    
    private void OnGetTitleForCodeCompleted(object state)
    {
        if ((this.GetTitleForCodeCompleted != null))
        {
            InvokeAsyncCompletedEventArgs e = ((InvokeAsyncCompletedEventArgs)(state));
            this.GetTitleForCodeCompleted(this, new GetTitleForCodeCompletedEventArgs(e.Results, e.Error, e.Cancelled, e.UserState));
        }
    }
    
    public void GetTitleForCodeAsync(string code)
    {
        this.GetTitleForCodeAsync(code, null);
    }
    
    public void GetTitleForCodeAsync(string code, object userState)
    {
        if ((this.onBeginGetTitleForCodeDelegate == null))
        {
            this.onBeginGetTitleForCodeDelegate = new BeginOperationDelegate(this.OnBeginGetTitleForCode);
        }
        if ((this.onEndGetTitleForCodeDelegate == null))
        {
            this.onEndGetTitleForCodeDelegate = new EndOperationDelegate(this.OnEndGetTitleForCode);
        }
        if ((this.onGetTitleForCodeCompletedDelegate == null))
        {
            this.onGetTitleForCodeCompletedDelegate = new System.Threading.SendOrPostCallback(this.OnGetTitleForCodeCompleted);
        }
        base.InvokeAsync(this.onBeginGetTitleForCodeDelegate, new object[] {
                    code}, this.onEndGetTitleForCodeDelegate, this.onGetTitleForCodeCompletedDelegate, userState);
    }
    
    private System.IAsyncResult OnBeginOpen(object[] inValues, System.AsyncCallback callback, object asyncState)
    {
        return ((System.ServiceModel.ICommunicationObject)(this)).BeginOpen(callback, asyncState);
    }
    
    private object[] OnEndOpen(System.IAsyncResult result)
    {
        ((System.ServiceModel.ICommunicationObject)(this)).EndOpen(result);
        return null;
    }
    
    private void OnOpenCompleted(object state)
    {
        if ((this.OpenCompleted != null))
        {
            InvokeAsyncCompletedEventArgs e = ((InvokeAsyncCompletedEventArgs)(state));
            this.OpenCompleted(this, new System.ComponentModel.AsyncCompletedEventArgs(e.Error, e.Cancelled, e.UserState));
        }
    }
    
    public void OpenAsync()
    {
        this.OpenAsync(null);
    }
    
    public void OpenAsync(object userState)
    {
        if ((this.onBeginOpenDelegate == null))
        {
            this.onBeginOpenDelegate = new BeginOperationDelegate(this.OnBeginOpen);
        }
        if ((this.onEndOpenDelegate == null))
        {
            this.onEndOpenDelegate = new EndOperationDelegate(this.OnEndOpen);
        }
        if ((this.onOpenCompletedDelegate == null))
        {
            this.onOpenCompletedDelegate = new System.Threading.SendOrPostCallback(this.OnOpenCompleted);
        }
        base.InvokeAsync(this.onBeginOpenDelegate, null, this.onEndOpenDelegate, this.onOpenCompletedDelegate, userState);
    }
    
    private System.IAsyncResult OnBeginClose(object[] inValues, System.AsyncCallback callback, object asyncState)
    {
        return ((System.ServiceModel.ICommunicationObject)(this)).BeginClose(callback, asyncState);
    }
    
    private object[] OnEndClose(System.IAsyncResult result)
    {
        ((System.ServiceModel.ICommunicationObject)(this)).EndClose(result);
        return null;
    }
    
    private void OnCloseCompleted(object state)
    {
        if ((this.CloseCompleted != null))
        {
            InvokeAsyncCompletedEventArgs e = ((InvokeAsyncCompletedEventArgs)(state));
            this.CloseCompleted(this, new System.ComponentModel.AsyncCompletedEventArgs(e.Error, e.Cancelled, e.UserState));
        }
    }
    
    public void CloseAsync()
    {
        this.CloseAsync(null);
    }
    
    public void CloseAsync(object userState)
    {
        if ((this.onBeginCloseDelegate == null))
        {
            this.onBeginCloseDelegate = new BeginOperationDelegate(this.OnBeginClose);
        }
        if ((this.onEndCloseDelegate == null))
        {
            this.onEndCloseDelegate = new EndOperationDelegate(this.OnEndClose);
        }
        if ((this.onCloseCompletedDelegate == null))
        {
            this.onCloseCompletedDelegate = new System.Threading.SendOrPostCallback(this.OnCloseCompleted);
        }
        base.InvokeAsync(this.onBeginCloseDelegate, null, this.onEndCloseDelegate, this.onCloseCompletedDelegate, userState);
    }
    
    protected override ISOAP CreateChannel()
    {
        return new SOAPClientChannel(this);
    }
    
    private class SOAPClientChannel : ChannelBase<ISOAP>, ISOAP
    {
        
        public SOAPClientChannel(System.ServiceModel.ClientBase<ISOAP> client) : 
                base(client)
        {
        }
        
        public System.IAsyncResult BeginGetSessions(System.AsyncCallback callback, object asyncState)
        {
            object[] _args = new object[0];
            System.IAsyncResult _result = base.BeginInvoke("GetSessions", _args, callback, asyncState);
            return _result;
        }
        
        public tempuri.org.SessionSummary[] EndGetSessions(System.IAsyncResult result)
        {
            object[] _args = new object[0];
            tempuri.org.SessionSummary[] _result = ((tempuri.org.SessionSummary[])(base.EndInvoke("GetSessions", _args, result)));
            return _result;
        }
        
        public System.IAsyncResult BeginGetCurrentSessionCode(System.AsyncCallback callback, object asyncState)
        {
            object[] _args = new object[0];
            System.IAsyncResult _result = base.BeginInvoke("GetCurrentSessionCode", _args, callback, asyncState);
            return _result;
        }
        
        public string EndGetCurrentSessionCode(System.IAsyncResult result)
        {
            object[] _args = new object[0];
            string _result = ((string)(base.EndInvoke("GetCurrentSessionCode", _args, result)));
            return _result;
        }
        
        public System.IAsyncResult BeginGetTitleForCode(string code, System.AsyncCallback callback, object asyncState)
        {
            object[] _args = new object[1];
            _args[0] = code;
            System.IAsyncResult _result = base.BeginInvoke("GetTitleForCode", _args, callback, asyncState);
            return _result;
        }
        
        public string EndGetTitleForCode(System.IAsyncResult result)
        {
            object[] _args = new object[0];
            string _result = ((string)(base.EndInvoke("GetTitleForCode", _args, result)));
            return _result;
        }
    }
}


