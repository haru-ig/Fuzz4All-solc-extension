pragma solidity ^0.8.0;
interface I2Events {
    event e(uint256);
    event ee(uint256);
}

pragma solidity ^0.8.0;
interface I1Events {
    event e(uint16);
    event ee(uint16);
}
contract C1 {
    uint[] public x;
    mapping(uint => address) public f;
    I1Events public d;



    I2Events public g;



}
contract C2 is I3aEvents, I2Events {
    uint256[] public x;


}
contract C3 is I3aEvents, C2 {}
contract C4 is I3aEvents {
    uint256[] public x;
    I2Events[] public d;
    uint256[] internal x_internal;



    I1Events[] public g_internal;
    uint256[] internal x_internal;


    C2 public g;



    uint256[] internal x_internal;


    uint256 public h;
}
