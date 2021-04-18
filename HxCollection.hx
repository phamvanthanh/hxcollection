
#if java 
import java.NativeArray;
#elseif cpp
import cpp.NativeArray;

#end


class HxCollection {


    static public function main():Void {
        trace("Hello hxcollection");
    }

    #if java || cpp


    @:generic
    public static function toNativeArray<T>(arr: Array<T>):NativeArray<T> {
        var narr  = new NativeArray();
        for (i in arr.length) {
            narr[i] = arr[i];
        }    

        return narr;
    }

    @:generic
    public static function toHaxeArray<T>(narr:NativeArray<T>):Array<T> {
        var arr = [];
        for(i in narr.length){
            arr[i] = narr[i];
        }

        return arr;
    }

    #end
}