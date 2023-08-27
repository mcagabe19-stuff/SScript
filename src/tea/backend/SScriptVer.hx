package tea.backend;

import haxe.Http;

using StringTools;

abstract SScriptVer(Null<Int>)
{
    public inline function new(num1:Int, num2:Int, num3:Int) 
    {
        this = 0;
        setVer(num1, num2, num3);
    }

    public inline function setVer(num1:Int, num2:Int, num3:Int):Void
    {
        var string:String = "";
        for (i in [num1, num2, num3])
            string += Std.string(i);

        this = Std.parseInt(string);
    }

    public function checkVer():Void {}

    public static function fromString(string:String):SScriptVer
    {
        var nums:Array<Int> = [];

        for (i in string.split('.'))
            nums.push(Std.parseInt(i));

        return new SScriptVer(nums[0], nums[1], nums[2]);
    }

    public inline function toString():String
        return Std.string(this).split('').join('.');

    public inline function toInt():Int
        return this;
}
