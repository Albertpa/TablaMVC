//
//  APRContacto.m
//  TablaMVC
//
//  Created by Albert  on 06/06/13.
//  Copyright (c) 2013 Albert Pages. All rights reserved.
//

#import "APRContacto.h"

@implementation APRContacto

-(id) initWithNombre:(NSString *)nombre email:(NSString *)email telefono:(NSString *) tel{
    if (self = [super init]){
        self.nombre = nombre;
        self.email = email;
        self.telefono = tel;
    }
    
    return self;
}
@end
