pragma solidity ^0.8.0;
contract Test1800D {
    uint[] public array;
    constructor () public {
        array = new uint[](3);

        array[2] = 5;
        array[1] = 5;
    }
}
contract Test1800E {
    uint[] array;
    constructor () public {
        array = nevalue[];
    }
}
contract Test1800F {
    uint[] public array;
    constructor () public {
        uint[] memory memorymemorymemory = new uint[](4);
    }
}
contract Test1800G {
    uint[] public array;
    constructor () public {
        uint mvar;
    }
}
contract Test1800H {
    uint[] public array;
    constructor () public {
        uint mvar;
    }
}
contract Test1800I {
    uint[] public array;
    constructor () public {
        array[0] = 5;
    }
}
contract Test1800J {
    uint[] public array;
    uint array[4] = [5,5,5];
    constructor () public {
    }
}
contract Test1800K {
    uint[] public array;
    uint array[4] = [5,5,5];
    constructor () public {
        uint[] memory arraymemory = nevalue[];
        array = nevalue[];

    }
}
