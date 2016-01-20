//
//  ViewController.m
//  HallOfFrames
//
//  Created by Yemi Ajibola on 1/20/16.
//  Copyright © 2016 Yemi Ajibola. All rights reserved.
//

#import "ViewController.h"
#import "Picture.h"
#import "PictureCollectionViewCell.h"
@interface ViewController () <UICollectionViewDelegate, UICollectionViewDataSource>

@property NSMutableArray *picCollection;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Picture* picture1 = [[Picture alloc]initWithImage:[UIImage imageNamed:@"universeimage1"] AndFrameColor:[UIColor blueColor]];
    Picture* picture2 = [[Picture alloc]initWithImage:[UIImage imageNamed:@"universeimage2"] AndFrameColor:[UIColor redColor]];
    Picture* picture3 = [[Picture alloc]initWithImage:[UIImage imageNamed:@"universeimage3"] AndFrameColor:[UIColor greenColor]];
    Picture* picture4 = [[Picture alloc]initWithImage:[UIImage imageNamed:@"universeimage4"] AndFrameColor:[UIColor yellowColor]];
    Picture* picture5 = [[Picture alloc]initWithImage:[UIImage imageNamed:@"universeimage5"] AndFrameColor:[UIColor orangeColor]];
    
    self.picCollection = [NSMutableArray arrayWithObjects:picture1, picture2, picture3, picture4, picture5, nil];
    
    [[[NSBundle mainBundle] loadNibNamed:@"CustomizationView" owner:self options:nil] objectAtIndex:0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    Picture* picture = [self.picCollection objectAtIndex:indexPath.row];
    PictureCollectionViewCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PictureCollectionViewCell" forIndexPath:indexPath];
    
    cell.pictureImageView.image = picture.image;
    cell.backgroundColor = picture.frameColor;
    
    return cell;
    
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.picCollection.count;
}
@end
