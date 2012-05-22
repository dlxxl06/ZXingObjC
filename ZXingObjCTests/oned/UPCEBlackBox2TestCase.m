#import "UPCEBlackBox2TestCase.h"
#import "ZXMultiFormatReader.h"

@implementation UPCEBlackBox2TestCase

- (id)initWithInvocation:(NSInvocation *)anInvocation {
  self = [super initWithInvocation:anInvocation
                testBasePathSuffix:@"Resources/blackbox/upce-2"
                     barcodeReader:[[[ZXMultiFormatReader alloc] init] autorelease]
                    expectedFormat:kBarcodeFormatUPCE];

  if (self) {
    [self addTest:30 tryHarderCount:35 rotation:0.0f];
    [self addTest:31 tryHarderCount:35 rotation:180.0f];
  }

  return self;
}

- (void)testBlackBox {
  [super runTests];
}

@end
