pragma solidity ^0.8.0;
contract C {
    constructor(address payable a, uint20) public payable {
        require(a!= address(0));
    }
}

pragma solidity ^0.8.0;
contract C {
    constructor(address payable a, mapping(bytes32 => bytes32)) public payable {
        require(a!= address(0));
    }
}
contract C {
    constructor(bytes32 payable b, uint256) public payable {
        require(b!= bytes32(0));
    }
}

pragma solidity ^0.8.0;
contract C {
    constructor(uint160 payable b) public payable {
        require(b!= uint160(0));
    }
}

pragma solidity ^0.8.0;
contract C {
    constructor(uint32 b) public payable {
        require(b!= uint32(0));
    }
}

contract C {
    constructor(address a) public payable {
        require(a!= address(0));
    }
}
contract C {
    constructor(address payable o) payable public {
        require(o!= address(0));
    }
}
contract C {
    constructor(uint256 b) public payable {
        require(b!= uint256(0));
    }
}
contract C {
    constructor(bytes32 b) public payable {
        require(b!= bytes32(0));
    }
}
contract C {
    constructor(address payable a) public payable {
        require(a!= address(0));
    }
}
contract C {
    constructor(address address1, uint256 amount1, address address2, address amount2) public payable {
        require(address1!= address(0));
        require(address2!= address(0));
    }
}
contract C {
    constructor(address payable a, bytes32 a1) public payable {
        require(a!= address(0));
        require(a1!= bytes32(0));
    }
}
contract C {
    constructor(uint256 b) public payable {
        require(b!= uint256(0));
    }
}
contract C {
    constructor(address payable a) public payable {
        require(a!= address(0));
    }
}
contract C {
    constructor(uint160 payable a) payable public {
        require(a!= uint160(0));
    }
}
contract C {
    constructor(address payable a) public payable {
        require(a!= address(0));
    }
}
