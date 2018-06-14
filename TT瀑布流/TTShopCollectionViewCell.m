//
//  TTShopCollectionViewCell.m
//  TT瀑布流
//
//  Created by apple on 16/3/27.
//  Copyright © 2016年 xiaoM. All rights reserved.
//

#import "TTShopCollectionViewCell.h"
#import <UIImageView+WebCache.h>


@interface TTShopCollectionViewCell()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;

@end

@implementation TTShopCollectionViewCell

- (void)awakeFromNib {
    // Initialization code
    [super awakeFromNib];
    
}

-(void)setShop:(TTShop *)shop{
    
    _shop = shop;
    
    self.priceLabel.text = _shop.price;
    
    [self.imageView sd_setImageWithURL:[NSURL URLWithString:_shop.img] placeholderImage:[UIImage imageWithContentsOfFile:@"me_img.jpg"]];
    
}
@end
