pragma solidity ^0.8.0;
contract Mutate79 {
    address[] z_;
    uint256 x_;
    bool flag_;
    constructor() public {
        z_ = new address[](13);
        z_[1] = address(0x20A3774215c3f60672671EDF44C1A76428786f8c);
        z_[2] = address(0x1b6df24e33c98d76296de44cbea0d2f0e248ac69);
        z_[3] = address(0xf86B9463a7D7376111370351aE4E5961E53c17Ca);
        z_[4] = address(0xF52E15D1e11d64B561A3Efe9D605625718655A70);
        z_[5] = address(0x49FF0a301594f734B91a4f5A91b1E62cf4b5B15C);
        z_[6] = address(0xe4C77cF17840a9E2E8DEc394b12b0b1C4d308C88);
        z_[7] = address(z_[3]);
        z_[8] = address(z_[7]);
        z_[9] = address(z_[5]);
        z_[10] = address(z_[3]);
        z_[11] = address(0x4422494996DE6000751bDfa79F46CCD028E5a8e);
        z_[12] = address(0x0145619640E9b52B20Ca47296a961615181fB815);
        x_ = 4;
        flag_ = false;
    }
    function modify(uint j) public {
        x_ = x_;
        z_[j] = address(6);
    }
    function getX() public view returns ( uint ) {
        return x_;
    }
    function getFlag() public view returns ( bool ) {
        return flag_;
    }
    function setFlag(bool a) public {
        flag_ = a;
    }
}
