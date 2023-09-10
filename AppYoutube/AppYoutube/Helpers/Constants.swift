//
//  Constants.swift
//  AppYoutube
//
//  Created by Paulo Pinheiro on 9/8/23.
//

import Foundation


struct Constants {
    
    
    static var API_KEY = "AIzaSyAOsNVCTe31tnWlxZ7xc-26XKHbX3egULU"
    
    // Tom Court PLay List
    
    static var TOMPLAYLIST_ID = "PLnkXOJiZ9KuP_64VYTDY1-J5P3iKXYCrH"
          
    static var PLAYLIST_ID = "PLMRqhzcHGw1aLoz4pM_Mg2TewmJcMg9ua"
    
    static var API_URL = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"

    static var VIDEOCELL_ID = "VideoCell"

}
