pragma solidity ^0.8.0;
contract IProxy {
    function setAddress(address _address) public;
}
pragma solidity ^0.8.0;

contract Proxy is Ownable, IProxy {
    address public implementer = 0xb965F300432299554Ae2A0003B0703294647c5c6;
    address public implementer2 = 0xc5f24E4C6876f7A80Eaf3A0e3f579F642C2C1f08;
    Modifier imp() { require(implementer == msg.sender, "not imp"); _; }
    constructor() public imp {
        _setupProxy();
    }
    function _setupProxy() internal {
    }

    function isProxy() public pure virtual returns (bool) {
        return true;
    }


    function isNotProxy() public pure virtual returns (bool) {
        return false;
    }

    function setProxyAddress(address _address) public imp {
        if (implementer!= address(0)) {
            require(_address!= address(0), "Zero address given");
        } else {
            implementer = _address;
        }
    }
    function setProxyAddress2(address _address) public imp {
        if (implementer2!= address(0)) {
            require(_address!= address(0), "Zero address given");
        } else {
            implementer2 = _address;
        }
    }
    function changeProxyAddress() public imp {
        if (_address!= address(0)) {
            implementer = _address;
        }
    }

    function changeProxyAddress2() public imp {
        if (_address!= address(0)) {
            implementer2 = _address;
        }
    }

    function withdraw() public imp {
        uint256 balance  = address(this).balance;
        IProxy(_address).setAddress(_address);
        revert();
    }

    receive() external payable {}
}
