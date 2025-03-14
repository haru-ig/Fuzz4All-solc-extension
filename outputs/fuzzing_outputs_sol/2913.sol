pragma solidity ^0.8.0;
contract Foo is Bar {
    constructor () external payable {}
    fallback () external payable {
        return ;
    }
}

pragma solidity >=0.8.0 <0.9.0;
contract Bar {
    receive() external payable {}
    fallback () external payable {
        return ;
    }
}
contract Foo is Bar {
    constructor () external payable {}
    fallback () external payable {
        return ;
    }
}

interface IBaz {
    receive() external payable {}
    fallback () external payable {
        return ;
    }
}
contract Bar {
    receive() external payable {}
    fallback () external payable {
        return ;
    }
}
contract Foo is Bar {
    constructor () external payable {}
    fallback () external payable {
        return ;
    }
}
*/
