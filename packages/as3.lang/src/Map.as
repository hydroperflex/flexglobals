package
{
    /**
     * A collection of key-value pairs.
     * 
     * Accessing a key-value uses the same ActionScript operators as for
     * ActionScript properties; but directly calling a key in a `Map` requires
     * using the `.call(k, ...args)` method.
     * 
     * # Weak keys
     * 
     * When the `Map` is created through weak keys enabled,
     * weak keys must be a managed Object and not for example a primitive.
     * An error is thrown when using a illegal key.
     *
     * In addition, a `Map` with weak keys enabled is not iterable.
     */
    [whack_external(slots="3")]
    public final class Map.<K, V>
    {
        public native function Map(weakKeys:Boolean = false);

        public native function length():Number;

        public native function apply(key:*, args:Object):*;

        public native function call(key:*, ...args : [*]):*;

        public native function has(key:*):Boolean;

        public native function hasOwnProperty(key:*, ...args : [*]):*;

        public native function entries() : [[*, *]];

        public native function keys() : [*];

        public native function values() : [*];

        public native function clear():void;
    }
}