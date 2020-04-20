//
//  ProfileHeaderViewModel.swift
//  JotdownApp
//
//  Created by Myles Tanous on 4/16/20.
//  Copyright © 2020 Myles Tanous. All rights reserved.
//

import UIKit

enum ProfileFilterOptions: Int, CaseIterable {
    case tweets
    case replies
    case likes
    
    var description: String {
        switch self {
        case .tweets: return "Tweets"
        case .replies: return "Tweets & Replies"
        case .likes: return "Likes"
        }
    }
}

struct ProfileHeaderViewModel {
    
    
    var actionButtonTitle: String {
        if user.isCurrentUser {
            return "Edit Profile"
        }
        
        if !user.isFollowed && !user.isCurrentUser {
            return "Add Friend"
        }
        
        if user.isFollowed {
            return "Unfriend"
        }
        
        return "Loading"
    }
    
    private let user: User
    
    init(user: User) {
        self.user = user
    }
    
    
}
