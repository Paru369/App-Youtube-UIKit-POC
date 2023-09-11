//
//  Constants.swift
//  AppYoutube
//
//  Created by Paulo Pinheiro on 9/8/23.
//

import Foundation


struct Constants {
    
    
    static var API_KEY = "AIzaSyAOsNVCTe31tnWlxZ7xc-26XKHbX3egULU"

    static var PLAYLIST_ID = "PLt5YPA-Y-vpo-IkkGEpGHabxfujmI8Fbf"
    
    static var API_URL = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"

    static var VIDEOCELL_ID = "VideoCell"
    
    static var YT_EMBED_URL = "https://www.youtube.com/embed/"

}
