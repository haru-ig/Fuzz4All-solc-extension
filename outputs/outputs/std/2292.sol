pragma solidity ^0.8.0;
interface IMutability {
    function mutate() external returns (uint256);
}
interface IA1 {
    function a1(uint i) external pure;
}
interface IA2 {
    function a1(uint i) external pure return (uint256) pure;
    function a2(uint i, uint z) external pure return (uint);
    function a3(uint i) external pure return (uint);
}
interface IA3 {
    function a1(uint) external pure;
}
contract A1 {
    address immutable admin = msg.sender;
    IA1 immutable a1;
    constructor() {
        a1 = IA1(0x40c58a1d6892b20f1b69cf64fb544d4cc5ac3fa3);
    }
    function setContract(IA1 _a1_) public {
        a1 = _a1_;
    }
    function setContractAddress(IA1 _a1_) public {
        a1 = IA1(_a1_);
    }
    function setContract(address _a1_) public {
        a1 = IA1(_a1_);
    }
    function setAddress(IA1 _a1_) public {
        a1 = IA1(_a1_);
    }
    function setAddressAddress(IA1 _a1_) public {
        a1 = IA1(_a1_);
    }
    function setAdmin(IA1 _a1_) public {
        require(_a1_.isContractAdmin(admin), "!isContractAdmin(a3())");
        admin = IA1(_a1_);
    }
    function setAdminAddress(IA1 _a1_) public {
        require(_a1_.isContractAdmin(admin), "!isContractAdmin(a3())");
        admin = IA1(_a1_);
    }
    function setAdminAddresse(IA1 _a1_) public {
        admin = IA1(_a1_);
    }
    function isContractAdmin(IA1 _a1_) public view returns (bool) {
        return IA1(_a1_).a1(1);
    }
}
