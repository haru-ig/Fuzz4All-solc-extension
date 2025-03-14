pragma solidity ^0.8.0;
interface IMutable {
    function setAddress(address _) external;
}

pragma solidity ^0.8.0;
interface IImmutableAndMutable {
    function addressFrom() external view returns (address);
    function setAddress(address _val) external;
}
pragma solidity ^0.8.0;
interface IImmutableAndMutable {

    function addressFrom() external view returns(address);

    function setAddress(address _val) external;

    function setAddressEvent() external;
}
pragma solidity ^0.8.0;
contract A {
    function call1(IMutable _) public pure {
        require(address(this).code!= 0x00);
        IMutable(this).setAddress(address(this));
    }
}
contract B {
    address mutable immutable selfAddress;

    constructor() public {
        call1(this);
    }

    function call1(IMutable _x) public pure {
        require(address(_x).code!= 0x00);
        IMutable(selfAddress).setAddress(address(_x));
    }
}
contract C_1_1_0_pre_0_8 {
    function call1(IMutable _x) public pure {
        require(_x.addressFrom()!= 0x00);
        IMutable(_x).setAddress(address(_x));
    }
}
contract C {
    function call1(IMutable _x) public pure {
        require(_x.addressFrom() == 0xffffffffffffffffffffffffffffffff);
        _x.setAddress(address(_x));
    }
}
contract D_1_3_0 {

    function call1(IImmutableAndMutable _x) public pure {
        _x.setAddress(address(_x));
    }
}
contract D_8_0 {

    function call1(IMutable _x) public pure {
        require(_x.addressFrom()!= 0x00);
        IMutable(_x).setAddress(address(_x));
    }
}
contract E_incompatible_contract_code {
    function call1(IMutable _x, ImmutableAndMutable_call _y) public pure {
        require(_x.addressFrom() == _y.contractCode);
        _x.setAddress(address(_x));
    }
}
contract ImmutableAndMutable_call {

    function get(address _) public view returns (address) {
        return IImmutableAndMutable(address(_x)).addressFrom();
    }


    function set(address _val) public pure {
        IImmutableAndMutable(
