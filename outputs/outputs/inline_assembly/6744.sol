pragma solidity ^0.8.0;
interface MixedContactsExample506Interface2 {
    function someOperation1() external returns(uint64);
    function get_some_uint64() external view returns(uint64);
}
contract MixedContactsExample506 {
    uint x;
    uint y;

    uint256 z;
    uint constant y_constant = 10;
    function getX() public view returns(uint256) {
        x = getSomeUint64();
    }
    function getY() public view returns (uint256) {
        return y;
    }
    function getZ() public view returns (uint256) {
        return z;
    }
    function getYConstant() public view returns (uint256) {
        return y_constant;
    }
    function setYConstant(uint256 constant new_constant) public {
        x = new_constant;
    }
}
contract MixedContactsExample506Test {
    string private test_string;

    function test() public {
        MixedContactsExample506 x1 = new MixedContactsExample506();
        MixedContactsExample506 y1 = new MixedContactsExample506();
        x1.setYConstant(10);

        assert(x1.getX() == 10);


        uint xValue = x1.getX();
        uint zValue = x1.getZ();

        x1.setY(yValue / 2);
        assert(y1.getY() == yValue / 2 + 2);
        m_set_x(x1);

        m_set_y(y1);

    }

    function m_set_x(MixedContactsExample506 memory _new_x) private returns (uint) {

        x1.x = _new_x.x;


        m_set_y(x1);
        return x1.x;
    }
    function m_set_y(MixedContactsExample506 memory _
