/*
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import <UIKit/UIKit.h>

@class BDListAdapter;
@class BDListSectionController;



NS_ASSUME_NONNULL_BEGIN

/**
 Implement this protocol to receive working range events for a list.

 The working range is a range *near* the viewport in which you can begin preparing content for display. For example,
 you could begin decoding images, or warming text caches.
 */
NS_SWIFT_NAME(ListWorkingRangeDelegate)
@protocol BDListWorkingRangeDelegate <NSObject>

/**
 Notifies the delegate that an section controller will enter the working range.

 @param listAdapter The adapter controlling the list.
 @param sectionController The section controller entering the range.
 */
- (void)listAdapter:(BDListAdapter *)listAdapter sectionControllerWillEnterWorkingRange:(BDListSectionController *)sectionController;

/**
 Notifies the delegate that an section controller exited the working range.

 @param listAdapter The adapter controlling the list.
 @param sectionController The section controller that exited the range.
 */
- (void)listAdapter:(BDListAdapter *)listAdapter sectionControllerDidExitWorkingRange:(BDListSectionController *)sectionController;

@end

NS_ASSUME_NONNULL_END
