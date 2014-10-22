-- default desktop configuration for Fedora

import System.Posix.Env (getEnv)
import Data.Maybe (maybe)

import XMonad

import XMonad.Config.Azerty

import XMonad.Util.EZConfig

import XMonad.Prompt
import XMonad.Prompt.RunOrRaise (runOrRaisePrompt)
import XMonad.Util.Run
import XMonad.Actions.CycleWS

import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.FadeInactive

import XMonad.Layout.PerWorkspace (onWorkspace, onWorkspaces)
import XMonad.Layout.SimpleFloat
import XMonad.Layout.ResizableTile
import XMonad.Layout.NoBorders
import XMonad.Layout.ThreeColumns
import XMonad.Layout.MultiColumns

import XMonad.Layout.FixedColumn
import XMonad.Layout.Grid
import XMonad.Layout.Named
import XMonad.Layout.PerWorkspace
import XMonad.Layout.Reflect
import XMonad.Layout.SimpleFloat
import XMonad.Layout.Tabbed
import XMonad.Layout.ToggleLayouts
import XMonad.Layout.WindowArranger


import qualified XMonad.StackSet as W
import qualified Data.Map as M

 -- yes, these are functions; just very simple ones
 -- that accept no input and return static values
myTerminal    = "konsole"
myModMask     = mod4Mask -- Win key or Super_L
myBorderWidth = 2


myWorkspaces = map show [1..9]


tiledLayout = Tall nmaster delta ratio
  where
    nmaster = 1     
    ratio   = 1/2  
    delta   = 3/100
fixedLayout = FixedColumn 1 20 80 10
floatLayout = windowArrange simpleFloat
    
myLayoutHook = tiledLayout ||| Mirror tiledLayout ||| fixedLayout
             ||| floatLayout ||| simpleTabbed
             ||| Mirror fixedLayout ||| ThreeCol 1 (3/100) (1/2)

-- The main function.
main = xmonad =<< statusBar myBar myPP toggleStrutsKey myConfig
--
-- -- Command to launch the bar.
myBar = "xmobar"
--
-- -- Custom PP, configure it as you like. It determines what is being written to the bar.
myPP = sjanssenPP { ppCurrent = xmobarColor "#429942" "" . wrap "<" ">" }
 
-- Key binding to toggle the gap for the bar.
toggleStrutsKey XConfig {XMonad.modMask = modMask} = (modMask, xK_b)
--
-- -- Main configuration, override the defaults to your liking.
myConfig = azertyConfig { 
	terminal 	= myTerminal
	, modMask 	= myModMask
	, borderWidth 	= myBorderWidth
	, workspaces	= myWorkspaces
        , layoutHook    = myLayoutHook
} `additionalKeys` myKeys

myKeys =
  [ 
	((mod4Mask, 	              xK_z             ), spawn "xscreensaver-command -lock")
  ]

startup :: X()
startup = do
	spawn "google-chrome"
	spawn "konsole"
	
	
	 
 
