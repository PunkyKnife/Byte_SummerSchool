#import "Student.h"

@implementation Student


-(void)study:(float)Time{
    NSLog(@"学习%f小时",Time);
}

@end

int main(){
    Student *stu=[Student new];
    [stu study:5.00];
}