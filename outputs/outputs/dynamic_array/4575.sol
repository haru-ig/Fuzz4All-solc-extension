pragma solidity ^0.8.0;
contract MyContract {
    function f(MyData memory data) public {
        data.bbb1[1].push(0x50);
    }
}

pragma solidity ^0.8.0;
contract MyContract {
    function f(MyData memory data) public {
        data.bbb1[2][0].push(0x50);
    }
}
