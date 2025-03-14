pragma solidity ^0.8.0;
contract Example11 {
    struct Example11S {
        uint256 id;
        uint256 value;
    }
}
contract Example16 {
    struct Example16S {
    }

    function Example16() {
        Example16S memory s = struct(
            Example11S(1, 2));
    }
}
contract Example12 {
    struct Example12S {
        address addr;
        uint8 a;
        uint8 b;
        bytes32 c;
    }
}
contract Example13 {
    struct Example13S {
    }

    function Example13(Example12 memory x) public {
        Example12S memory s = x;
    }
}
contract Example14 {
    struct Example12S {
        address addr;
        uint8 a;
        uint8 b;
        bytes32 c;
    }
}
contract Example22 {
    struct Example12S {
        address addr;
        uint8 a;
        uint8 b;
    }
}
contract Example15 {
    struct Example15S {
        address addr;
        uint8 a;
        uint8 b;
        bytes32 c;
    }
}
contract Example17 {
    struct Example17S {
    }

    function Example17(Example12S memory x) public {
        Example12S memory s = x;
    }
}
contract Example18 {
    struct Example18S {
        address addr;
        uint8 a;
        uint8 b;
        bytes32 c;
    }
}
contract Example19 {
    struct Example19S {
    }

    function Example19(Example15S memory x) public {
        Example15S memory s = x;
    }
}
contract Example20 {
    struct Example20S {
    }

    function Example20(Example18S memory x) public {
        Example18S memory s = x;
    }
}
contract Example21 {
    struct Example21S {
    }

    function Example21(Example19S memory x) public {
        Example19S memory s = x;
    }
}
