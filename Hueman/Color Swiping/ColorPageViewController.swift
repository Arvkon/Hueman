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
        delegate = self

        setViewControllers([newColorViewController()], direction: .forward, animated: false, completion: nil)
    }

    private func newColorViewController() -> UIViewController {
        let colorVC = UIViewController()
        colorVC.view.backgroundColor = .random()
        return colorVC
    }

    private var titleAnimation: CAAnimation {
        let transition = CATransition()
        transition.duration = 0.2
        transition.type = .fade
        return transition
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

// MARK: UIPageViewControllerDelegate

extension ColorPageViewController: UIPageViewControllerDelegate {

    func pageViewController(_ pageViewController: UIPageViewController, willTransitionTo pendingViewControllers: [UIViewController]) {
        navigationController?.navigationBar.layer.add(titleAnimation, forKey: "fadeText")
        navigationItem.title = nil
    }

    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        guard let newColor = viewControllers?.first?.view?.backgroundColor else { return }
        navigationController?.navigationBar.layer.add(titleAnimation, forKey: "fadeText")
        navigationItem.title = "#\(newColor.hex)"
    }

}
