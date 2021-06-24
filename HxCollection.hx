package ;
#if java 
import java.NativeArray;
#elseif cpp
import cpp.NativeArray;

#end


@:native
@:nativeGen
@:nativeChildren
@:nativeProperty
class HxCollection {


    static public function main():Void {
        trace("Hello hxcollection");
    }

    #if java
    @:generic
    public static function toNativeArray<T>(arr: Array<T>):NativeArray<T> {
        var narr  = new NativeArray(arr.length);
        for (i in 0...arr.length) {
            narr[i] = arr[i];
        }    

        return narr;
    }

    @:generic
    public static function toHaxeArray<T>(narr:NativeArray<T>):Array<T> {
        var arr:Array<T> = [narr.length];
        
        for(i in 0...narr.length){
            arr[i] = narr[i];
        }

        return arr;
    }

    #end
}