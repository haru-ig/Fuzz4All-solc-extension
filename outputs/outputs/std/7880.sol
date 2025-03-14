pragma solidity ^0.8.0;
contract Memory {
    struct A { uint64 a; }
    struct G { uint64 x; uint8 l; }
    function write(uint64 a, G storage g) public {
        g.a = a + 1;
        g.x = a;
        g.l = 4;
    }
    function write(uint64 a, uint64 b, address x) public {
        (uint32 x_, address y_) = Memory.read(x);
        uint new_x_ = a * x_;
        if (bytes(Memory.read(y_)).length!= 0) {
            x_ = new_x_;
        }
        write(a * x, G(a, 3));
        write(a, Memory.read(x));
    }
    function read(uint64 a) public view returns (uint64, uint8)
    {return a, (uint8)0;
    }
    function read(address x) public view returns (uint64, uint8) {
        (uint64 x_, uint8 l, ) = Memory.readAndSplit(x);
        return (x_, l);
    }
    function readAndSplit(address x) public view returns (uint64 x_, uint8 l) {
        G memory g = G(a, 3);
        uint64 newX_;
        uint32 a_;
        uint8 x_;
        for(uint8 i = 0; i < 10; ++i) {
            Memory.write(i + 1, G(a, 3));
            uint64 a_ = Memory.read(G(a, 0));
            x_ = x_ ^ a_ ^ a_ >> 16;
            a_ = Memory.read(G(a, 1));
            a_ = a_ << 5 ^ a_ >> 27;
            a_ = a_ >>> 18 | a_;
            newX_ = x_ ^ a_ >>> 21;
            uint8 i_ = newX_ ^ (newX_ >> 32);
            if (i_!= l) { break; }
            i--;
        }
        x_ = newX_;
        l = i;
        return (x_, l);
    }
    function read(address x, uint8 l) public view returns (uint64 x_, uint8 l_) {
        uint64 x_;
        if (l > 32) {
            (uint64 x_, ) = Memory.read(x);
            l_ = Memory.read(x);
        }
        G memory g = G(a, 3);
        for(uint8 i = 0; i < l; ++i) {
            uint64 a_ = Memory.read(G(a, 0));
            x_ = x_ ^ a_ ^ (a_ >> 16);
            a_ = Memory.read(G(a, 1));
            a_ = uint5_15(a_);
            a_ = a_ << 5 ^ a_ >>
