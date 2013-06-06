//
//  APRContacto.h
//  TablaMVC
//
//  Created by Albert  on 06/06/13.
//  Copyright (c) 2013 Albert Pages. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APRContacto : NSObject
@property (strong) NSString * nombre;
@property (strong) NSString * email;
@property (strong) NSString * telefono;

-(id) initWithNombre:(NSString *)nombre email:(NSString *)email telefono:(NSString *) tel;
@end
