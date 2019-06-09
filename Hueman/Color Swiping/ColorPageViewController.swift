//
//  ColorPageViewController.swift
//  Hueman
//
//  Created by Arvid Kongstad on 08/06/2019.
//  Copyright © 2019 Weekend Industries. All rights reserved.
//

import UIKit

class ColorPageViewController: UIPageViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        dataSource = self

        setViewControllers([newColorViewController()], direction: .forward, animated: false, completion: nil)
    }

    private func newColorViewController() -> UIViewController {
        let colorVC = UIViewController()
        colorVC.view.backgroundColor = randomColor()
        return colorVC
    }

    private func randomColor() -> UIColor {
        return UIColor(red: CGFloat.random(in: 0.0...1.0),
                       green: CGFloat.random(in: 0.0...1.0),
                       blue: CGFloat.random(in: 0.0...1.0),
                       alpha: 1.0)
    }

}

// MARK: UIPageViewControllerDataSource

extension ColorPageViewController: UIPageViewControllerDataSource {

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        return newColorViewController()
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        return newColorViewController()
    }

}
