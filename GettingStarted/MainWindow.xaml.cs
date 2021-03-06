﻿using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Threading;
using Microsoft.Kinect.Toolkit;
using Microsoft.Kinect;
using Microsoft.Kinect.Toolkit.Controls;
using Przewodnik.Views;
using Przewodnik.Utilities;
using System.Windows.Media;

namespace Przewodnik
{
    public partial class MainWindow : Window
    {

        private const int MinimumScreenWidth = 1920;
        private const int MinimumScreenHeight = 1080;

        private Navigator _navigator;
        private KinectPageFactory _pageFactory;

        private KinectController _kinectController;
        private MouseMovementDetector _movementDetector;

        private InstagramAPIManager _instagramAPI;


        public MainWindow(KinectController controller)
        {
            InitializeComponent();
            Loaded += OnLoaded;

            //_instagramAPI = new InstagramAPIManager();
            //_instagramAPI.saveRecentImages();

            _navigator = new Navigator(this);
            _pageFactory = new KinectPageFactory(_navigator);

            _navigator.SetMainMenu(_pageFactory.GetMainMenu());
            _navigator.SetSleepScreen(_pageFactory.GetSleepScreen());


            _kinectController = controller;
            _kinectController.EngagedUserColor = (Color)this.Resources["EngagedUserColor"];
            _kinectController.TrackedUserColor = (Color)this.Resources["TrackedUserColor"];
            _kinectController.EngagedUserMessageBrush = (Brush)this.Resources["EngagedUserMessageBrush"];
            _kinectController.TrackedUserMessageBrush = (Brush)this.Resources["TrackedUserMessageBrush"];
            _kinectController.Navigator = _navigator;
            kinectRegion.HandPointersUpdated += (sender, args) => _kinectController.OnHandPointersUpdated(this.kinectRegion.HandPointers);
            DataContext = _kinectController;


            _movementDetector = new MouseMovementDetector(this);
            _movementDetector.IsMovingChanged += OnIsMouseMovingChanged;
            _movementDetector.Start();
        }

        private void OnLoaded(object sender, RoutedEventArgs routedEventArgs)
        {
            
            // check resolution
            double height = SystemParameters.PrimaryScreenHeight;
            double width = SystemParameters.PrimaryScreenWidth;
            if (width < MinimumScreenWidth || height < MinimumScreenHeight)
            {
                MessageBoxResult continueResult = MessageBox.Show(Properties.Resources.SmallerScreenResolutionMessage, Properties.Resources.SmallerScreenResolutionTitle, MessageBoxButton.YesNo);
                if (continueResult == MessageBoxResult.No)
                {
                    this.Close();
                }
                else
                {
                    MinHeight = height;
                    MinWidth = width;
                }
            }

            _navigator.GoSleep();
        }

        protected override void OnKeyUp(KeyEventArgs e)
        {
            if (null == e)
            {
                throw new ArgumentNullException("e");
            }

            if (Key.Escape == e.Key)
            {
                this.Close();
            }

            base.OnKeyUp(e);
        }

        private void OnIsMouseMovingChanged(object sender, EventArgs e)
        {
            WindowBezelHelper.UpdateBezel(this, _movementDetector.IsMoving);
            _kinectController.IsInEngagementOverrideMode = _movementDetector.IsMoving;
        }

        public void Wake()
        {
            TopRow.Height = new GridLength(150);
        }
        public void Sleep()
        {
            TopRow.Height = new GridLength(0);
            SetView(_pageFactory.GetSleepScreen().GetView());
        }

        public void ShowBackButton(bool enable)
        {
            if (enable) BackButton.Visibility = System.Windows.Visibility.Visible;
            else BackButton.Visibility = System.Windows.Visibility.Hidden;
        }

        public void SetView(Grid grid)
        {
            PageContentGrid.Children.Clear();
            PageContentGrid.Children.Add(grid);
        }

        private void BackAction(object sender, RoutedEventArgs e)
        {
            _navigator.GoBack();
        }

    }
}
