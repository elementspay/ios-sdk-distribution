//
//  ETDSExpandableInformationView.h
//  Stripe3DS2
//
//  Created by Andrew Harrison on 3/11/19.
//  Copyright © 2019 Stripe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ETDSFooterCustomization.h"

NS_ASSUME_NONNULL_BEGIN

@interface ETDSExpandableInformationView : UIView

@property (nonatomic, strong, nullable) NSString *title;
@property (nonatomic, strong, nullable) NSString *text;
@property (nonatomic, strong, nullable) ETDSFooterCustomization *customization;
@property (nonatomic, strong, nullable) void (^didTap)(void);

@end

NS_ASSUME_NONNULL_END
