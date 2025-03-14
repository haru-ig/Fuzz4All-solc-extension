pragma solidity ^0.8.0;
contract old160{
    constructor()public{
        contract old160 b = new old160();
    }
}
pragma solidity ^0.8.4;

pragma solidity ^0.8.0;
contract old160{
    constructor()public{
        uint uint160 = 10000;
        uint x;
        assembly {
            x := add(0x00,uint160)
        }
    }
}
pragma solidity ^0.8.4;

pragma solidity ^0.8.0;
contract old160{
    constructor()public{
        uint uint160 = 10000;
        string memory str;
        string memory s;
        assembly {
            s := add(0x60,uint160)
            s := add(x60,x60)
            x := add(0x60,s)
        }
    }
}
