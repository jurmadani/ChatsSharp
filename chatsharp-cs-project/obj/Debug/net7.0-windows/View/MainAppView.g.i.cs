﻿#pragma checksum "..\..\..\..\View\MainAppView.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "B6C812ABB59AB10649A4EC1B68AC07DAF1AB12EE"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using FontAwesome.Sharp;
using MahApps.Metro.IconPacks;
using MahApps.Metro.IconPacks.Converter;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Controls.Ribbon;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Forms.Integration;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;
using chatsharp_cs_project.View;


namespace chatsharp_cs_project.View {
    
    
    /// <summary>
    /// HomeView
    /// </summary>
    public partial class HomeView : System.Windows.Controls.UserControl, System.Windows.Markup.IComponentConnector {
        
        
        #line 115 "..\..\..\..\View\MainAppView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.StackPanel panelControlBar;
        
        #line default
        #line hidden
        
        
        #line 123 "..\..\..\..\View\MainAppView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button buttonClose;
        
        #line default
        #line hidden
        
        
        #line 132 "..\..\..\..\View\MainAppView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button buttonMaximize;
        
        #line default
        #line hidden
        
        
        #line 141 "..\..\..\..\View\MainAppView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button buttonMinimize;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "7.0.2.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/chatsharp-cs-project;V1.0.0.0;component/view/mainappview.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\View\MainAppView.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "7.0.2.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.panelControlBar = ((System.Windows.Controls.StackPanel)(target));
            
            #line 121 "..\..\..\..\View\MainAppView.xaml"
            this.panelControlBar.MouseLeftButtonDown += new System.Windows.Input.MouseButtonEventHandler(this.panelControlBar_MouseLeftButtonDown);
            
            #line default
            #line hidden
            
            #line 122 "..\..\..\..\View\MainAppView.xaml"
            this.panelControlBar.MouseEnter += new System.Windows.Input.MouseEventHandler(this.panelControlBar_MouseEnter);
            
            #line default
            #line hidden
            return;
            case 2:
            this.buttonClose = ((System.Windows.Controls.Button)(target));
            
            #line 126 "..\..\..\..\View\MainAppView.xaml"
            this.buttonClose.Click += new System.Windows.RoutedEventHandler(this.buttonClose_Click);
            
            #line default
            #line hidden
            return;
            case 3:
            this.buttonMaximize = ((System.Windows.Controls.Button)(target));
            
            #line 135 "..\..\..\..\View\MainAppView.xaml"
            this.buttonMaximize.Click += new System.Windows.RoutedEventHandler(this.buttonMaximize_Click);
            
            #line default
            #line hidden
            return;
            case 4:
            this.buttonMinimize = ((System.Windows.Controls.Button)(target));
            
            #line 144 "..\..\..\..\View\MainAppView.xaml"
            this.buttonMinimize.Click += new System.Windows.RoutedEventHandler(this.buttonMinimize_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

