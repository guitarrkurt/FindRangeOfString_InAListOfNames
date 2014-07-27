/*
 Autor: David Guillermo López Vázquez
 Email: guitarrkurt@icloud.com
 Description: Find common proper names that contains two adjects
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //Cargamos el archivo en un NSString
        NSString *myFile = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames" encoding:NSUTF8StringEncoding error:nil];
        //Creamos un arreglo que contendra todos nuestros nombres
        NSArray *properNames = [NSArray array];
        //Dividimos nuestro String en sub-Strings y los almacenamos en un Array
        properNames = [myFile componentsSeparatedByString:@"\n"];
        
        //Recorremos nuestro arreglo
        for(NSString *index in properNames)
        {
            
            
            NSRange rangeSearched = [index rangeOfString:@"con" options:NSCaseInsensitiveSearch];
            if(rangeSearched.location != NSNotFound)
            {
                NSLog(@"%@", index);
            }
        }
        
    }
    return 0;
}

