﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Interop;
using Przewodnik.Views;
using GettingStarted;

namespace Przewodnik
{
    public class KinectPageFactory
    {
        private Navigator navigator;

        private IKinectPage _mainMenu;
        private IKinectPage _sleepScreen;
        private IKinectPage _attractions;
        private IKinectPage _attractionArticle;


        public KinectPageFactory(Navigator navigator)
        {
            this.navigator = navigator;
        }

        public IKinectPage GetMainMenu()
        {
            if (_mainMenu == null) _mainMenu = new MainMenu(this);
            return _mainMenu;
        }

        public IKinectPage GetSleepScreen()
        {
            if (_sleepScreen == null) _sleepScreen = new SleepScreen(this);
            return _sleepScreen;
        }

        public IKinectPage GetAttractionsGrid()
        {
            if (_attractions == null) _attractions = new Attractions(this);
            return _attractions;
        }

        public IKinectPage GetAttractionArticleGrid()
        {
            if (_attractionArticle == null) _attractionArticle = new AttractionArticle(this, null);
            return _attractionArticle;
        }

        public IKinectPage GetAttractionArticleGrid(String parameter)
        {
            _attractionArticle = new AttractionArticle(this, parameter);
            return _attractionArticle;
        }

        public void NavigateTo(IKinectPage page)
        {
            navigator.NavigateTo(page);
        }
    }
}
