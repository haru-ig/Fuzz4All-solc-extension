pragma solidity ^0.8.0;
contract Test18_semanticsSame_6{
            uint32 public x = 42;
            struct Point{ uint32 x; }
            Point memory p = Point(42);
        }
contract Test18_semanticsSame_7{
            uint32[] public p;
            struct Point{ uint32 x; }
            Point memory p = Point(42);
        }
contract Test18_semanticsSame_8{
            uint32[] public p;
            struct Point{ uint32 x; }
            Point memory p = Point(42);
            uint42[] public q;
        }
contract Test18_semanticsSame_9{
            uint32[] public p;
            struct Point{ uint32 x; }
            Point memory p = Point(42);
            uint42[] public q;
            uint256[] public r;
            uint42[] p2;
        }
contract Test18_semanticsSame_10{
            uint32 public x = 42;
            uint42[] public q;
            uint256[] public r;
            uint42[] public p;
        }
