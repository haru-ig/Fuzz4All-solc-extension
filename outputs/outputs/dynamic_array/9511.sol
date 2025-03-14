pragma solidity ^0.8.0;
interface IComparable {
    uint compare(uint) external pure returns(uint x);
}
contract EtherBase {
    contract IComp<T> {
        function f() public pure returns(address) {}

    }
    function g() public pure returns(address) {}
}
import "./EtherBase.sol";
contract EtherBase2 is IComp<address> {
    bool a;
    function add() public pure returns(address)
    {
        assembly {
            let b := 0
            while true {
                b := add(b, 1, 0)
                jnz b, false
             }
        }
    }
}
contract Main is EtherBase {
    Main main = Main(0xf7c6246a00000000000000000000000000000000);
    function f() public pure returns(address)
    {
        EtherBase2 b = EtherBase2(0x393d68590000000000000000000000000000000);
        EtherBase2 d = main.contract();
        DumbInterface s = DumbInterface(0xfe5c0a4f000000000000000000000000000000000);
        return d.f();
    }

    function getAddress() public constant returns(address)
    {
        return 0x393d6859000000000000000000000000000000;
    }
}


pragma solidity ^0.8.0;
contract EtherBase {
    contract Dummy {
        address public dumb;

        function f() public pure returns(address) {}
    }
    assembly { }
}
