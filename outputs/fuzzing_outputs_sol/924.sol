pragma solidity ^0.8.0;
contract Example {
    fallback () external payable {
        revert();
    }
    receive() external payable {
        revert();
    }
}
contract FallbackExample0 {
    address public caller;
    constructor () public {caller = msg.sender;}
    function createExample () public payable {
        Example example;
        Example(address(caller)).constructor();
        example.fallback();
    }
    function getCaller () public view returns (address) {return caller;}
}
contract FallbackExample1 {
    fallback () public payable {
        revert();
    }
    receive() public payable {
        revert();
    }
}
contract FallbackExample2 {
    fallback () external payable {
        revert();
    }
    receive() external payable {
        revert();
    }
}
contract FallbackExample3 {
    fallback () external payable {
        revert();
    }
}
contract FallbackExample4 {
    address public caller;
    constructor () public {caller = msg.sender;}
    receive () public payable {
        revert();
    }
}
contract FallbackExample5 {
    fallback () external payable {
        revert();
    }
}
contract ContractFallbackExample {

    contract C { fallback () external payable { revert(); }};
}
contract FallbackExample6 {
    fallback () public {
        revert();
    }
    receive () public {
        revert();
    }
}
contract FallbackExample7 {
    address public caller;
    constructor () public {caller = msg.sender;}
    fallback () external payable {
        revert();
    }
    receive () public payable {
        revert();
    }
}
contract FallbackExample8 {
    fallback () external payable {
        revert();
    }
    receive () public payable {
        revert();
    }
}
contract FallbackExample9 {
    constructor (bool _condition) public {require(_condition == true);}
    fallback () external payable {revert();}
}
contract FallbackExample10 {
    require(block.timestamp!= 0);
    fallback () public payable { revert(); }
}
contract FallbackExample11 {
    constructor () public {
        new FallbackExample9(false);
    }
    fallback () external payable { revert();   }
}
