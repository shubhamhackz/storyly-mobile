//
//  CustomStyleViewController.swift
//  StorylyDemo
//
//  Created by Levent Oral on 9.08.2021.
//  Copyright © 2021 App Samurai Inc. All rights reserved.
//

import UIKit
import Storyly

class CustomStyleViewController: UIViewController {
    
    private let gradientPortraitViewFactory: StoryGroupViewFactory = GradientPortraitViewFactory()
    private let portraitViewFactory: StoryGroupViewFactory = PortraitViewFactory()
    private let landspaceViewFactory: StoryGroupViewFactory = LandscapeViewFactory()
    private let wideLandspaceViewFactory: StoryGroupViewFactory = WideLandscapeViewFactory()

    @IBOutlet var gradientPortraitStorylyView: StorylyView!
    @IBOutlet var portraitStorylyView: StorylyView!
    @IBOutlet var landscapeStorylyView: StorylyView!
    @IBOutlet var wideLandscapeStorylyView: StorylyView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white

        // Do any additional setup after loading the view
        gradientPortraitStorylyView.storylyInit = StorylyInit(storylyId: STORYLY_INSTANCE_TOKEN)
        gradientPortraitStorylyView.rootViewController = self
        gradientPortraitStorylyView.storyGroupViewFactory = GradientPortraitViewFactory()
        
        portraitStorylyView.storylyInit = StorylyInit(storylyId: STORYLY_INSTANCE_TOKEN)
        portraitStorylyView.rootViewController = self
        portraitStorylyView.storyGroupViewFactory = portraitViewFactory
        
        landscapeStorylyView.storylyInit = StorylyInit(storylyId: STORYLY_INSTANCE_TOKEN)
        landscapeStorylyView.rootViewController = self
        landscapeStorylyView.storyGroupViewFactory = landspaceViewFactory
        
        wideLandscapeStorylyView.storylyInit = StorylyInit(storylyId: STORYLY_INSTANCE_TOKEN)
        wideLandscapeStorylyView.rootViewController = self
        wideLandscapeStorylyView.storyGroupViewFactory = wideLandspaceViewFactory
    }
}
