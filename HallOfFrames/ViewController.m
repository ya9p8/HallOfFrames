//
//  ViewController.m
//  HallOfFrames
//
//  Created by Yemi Ajibola on 1/20/16.
//  Copyright © 2016 Yemi Ajibola. All rights reserved.
//

#import "ViewController.h"
#import "PictureCollectionViewCell.h"
@interface ViewController () <UICollectionViewDelegate, UICollectionViewDataSource>
@property PictureCollectionViewCell *pic1;
@property PictureCollectionViewCell *pic2;
@property PictureCollectionViewCell *pic3;
@property PictureCollectionViewCell *pic4;
@property PictureCollectionViewCell *pic5;
@property NSMutableArray *picCollection;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.picCollection = [NSMutableArray arrayWithObjects:self.pic1, self.pic2, self.pic3, self.pic4, self.pic5, nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    UICollectionViewCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PictureCollectionViewCell" forIndexPath:indexPath];
    return cell;
    
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.picCollection.count;
}
@end
