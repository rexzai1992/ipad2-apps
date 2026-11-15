#import "RootViewController.h"

@implementation RootViewController {
    NSInteger _taps;
    UILabel *_counter;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:0.04 green:0.10 blue:0.18 alpha:1.0];

    UILabel *title = [[UILabel alloc] init];
    title.text = @"Hello iPad 2!";
    title.textColor = [UIColor whiteColor];
    title.font = [UIFont boldSystemFontOfSize:48];
    title.textAlignment = NSTextAlignmentCenter;
    title.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:title];

    UILabel *sub = [[UILabel alloc] init];
    sub.text = @"Our own app - built in the cloud, no jailbreak.";
    sub.textColor = [UIColor colorWithWhite:0.75 alpha:1.0];
    sub.font = [UIFont systemFontOfSize:22];
    sub.textAlignment = NSTextAlignmentCenter;
    sub.numberOfLines = 0;
    sub.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:sub];

    _counter = [[UILabel alloc] init];
    _counter.text = @"Taps: 0";
    _counter.textColor = [UIColor colorWithRed:1.0 green:0.84 blue:0.3 alpha:1.0];
    _counter.font = [UIFont boldSystemFontOfSize:30];
    _counter.textAlignment = NSTextAlignmentCenter;
    _counter.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:_counter];

    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"Tap me" forState:UIControlStateNormal];
    [btn.titleLabel setFont:[UIFont boldSystemFontOfSize:26]];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor colorWithRed:0.18 green:0.42 blue:1.0 alpha:1.0];
    btn.layer.cornerRadius = 14;
    btn.translatesAutoresizingMaskIntoConstraints = NO;
    [btn addTarget:self action:@selector(tap) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];

    UILayoutGuide *g = self.view.layoutMarginsGuide;
    [NSLayoutConstraint activateConstraints:@[
        [title.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
        [title.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor constant:-120],
        [sub.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
        [sub.topAnchor constraintEqualToAnchor:title.bottomAnchor constant:20],
        [sub.leadingAnchor constraintEqualToAnchor:g.leadingAnchor],
        [sub.trailingAnchor constraintEqualToAnchor:g.trailingAnchor],
        [_counter.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
        [_counter.topAnchor constraintEqualToAnchor:sub.bottomAnchor constant:40],
        [btn.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
        [btn.topAnchor constraintEqualToAnchor:_counter.bottomAnchor constant:30],
        [btn.widthAnchor constraintEqualToConstant:220],
        [btn.heightAnchor constraintEqualToConstant:64],
    ]];
}

- (void)tap {
    _taps++;
    _counter.text = [NSString stringWithFormat:@"Taps: %ld", (long)_taps];
}
@end
