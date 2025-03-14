pragma solidity ^0.8.0;
contract Mutator {
    function mutate(address addr) public {
        address addr2 = addr;
        assembly {
            let x
            mstore(0x40, addr)
            mstore(0x40, addr2)
            mstore(x, call())
        }
    }
}

pragma solidity ^0.8.0;
contract Proxy {

    function() payable public {
    }

    function direct() public pure {
    }

    function sendEther() public payable virtual {
    }
    function sendString(string memory addr) public {

    }
}
function main1() public {
    Proxy p;
    p.direct();
    p.sendMoney();
    p.useDefaultFct();
    p.call();
    p.sendEther();
    p.sendString("abc");

    Mutator m;
    m.mutate(address(p));
    m.direct();
    m.sendMoney();
    m.useDefaultFct();
    m.call();
    m.sendEther();
    m.sendString("abc");
}
