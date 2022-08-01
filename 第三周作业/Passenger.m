//
//  Passenger.m
//  College Demo
//
//  Created by mashujun on 2022/7/18.
//  Finished by libaixin on 2022/7/27

#import "Passenger.h"

@implementation Date

- (instancetype)initWithYear:(int)year andMonth:(int)month andDay:(int)day
{
    self = [super init];
    if(self)
    {
        _year = year;
        _month = month;
        _day = day;
    }
    return self;
}

@end

@implementation Order

- (instancetype)initWithId:(int)id andLocation:(CLLocation*)location andDate:(Date)date andCost:(int)cost
{
    self = [super init];
    if(self)
    {
        _id = id;
        _location = location;
        _date = date;
        _cost = cost;
    }  
    return self;
}
@end

@implementation Orders

-(instancetype)initWithOrders: (Order*)orders andNumber: (int)number
{ 
    self = [super init];
    if(_number>=_maxNumber)
    return nil;
    else{
        if(self)
        {
            _orders = orders;
            _number = number;
        }  
        return self;
    }
}
- (instancetype)init
{
    return [self initWithOrders:nil andNumber:0];
}

@end

@implementation Passenger
- (instancetype)initWithName:(NSString *)name address:(Address *)address birthday:(nonnull NSDate *)birthday andReach18:(bool)R18 andhistoryOrder:(order*)horder andtogoOrder:(order*)nTorder
{
    self = [super initWithName:name andAddress:address andBirthday:birthday];
    if(self)
    {
        _reach18 = R18;
        _historyOrder = horder;
        _togoOrder = nTorder;
    }  
    return self;
}

-(void)getTicket:(Order)order
{
    _togoOrder._Orders[_number] = order;
    _togoOrder._number++;
}

-(void)checkOutTicket:(Order)order
{
    _togoOrder._Orders[_number] = nil;
    _togoOrder._number--;
    _historyOrder._Orders[_number] = order;
    _historyOrder._number++;
}
@end
