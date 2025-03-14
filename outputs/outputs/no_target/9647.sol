pragma solidity ^0.8.0;
interface Base_v6 { function contract() public pure returns (address); }
interface Base2_v1 { function contract() public view returns (address); }

pragma solidity ^0.8.0;
contract Solid_v2 { function contract() public virtual pure returns (bool); }
contract A2 { function contract() public virtual view returns (bool); }
contract A3 { function contract() public virtual pure returns (bool); }

pragma solidity ^0.8.0;
contract Base_v6 inherits Base_v6 { constructor() public Base_v6() { } }
contract A2 inherits Base_v6 implements Base2_v1 { constructor() public A2() { } }
contract A3 inherits Base_v6 implements Base2_v1, Base2_v2, Base2_v3 { constructor() public A3() { } }
contract B2 { function contract() public view returns (bool); }
contract B3 { function contract() public pure returns (bool); }
contract B4 { function contract() public virtual returns (bool); }
contract B5 { function contract() public virtual view returns (bool); }
contract C { function contract() public pure returns (bool); }
contract D { function contract() public view returns (bool); }
contract E { function contract() public virtual returns (bool); }
contract F { function contract() public virtual view returns (bool); }
contract G { function contract() public virtual view returns (bool); }
contract H { function contract() public virtual view returns (bool); }
contract I1 { function contract() public pure returns (bool); }
interface Interface_v6 { function contract() public pure returns (bool); }
interface Interface2_v7 { function contract() public virtual returns (bool); }
interface Interface_v8 { function contract() public virtual view returns (bool); }
interface Interface2_v9 { function contract() public pure view returns (bool); }
contract Interface_v8Impl { function contract() public pure returns (bool); }
contract Interface2_v10Impl { function contract() public pure view returns (bool); }
contract Interface2_v11Impl { function contract() public pure view returns (bool); }
contract Interface2_v12Impl { function contract() public virtual returns (bool); }
contract Interface2_v13Impl { function contract() public pure view returns (bool); }
contract Interface2_v14Impl { function contract() public pure view returns (bool); }
contract Interface_v8ImplImpl { function contract() public pure returns (bool); }
contract Interface_v2Impl { function contract() public virtual returns (bool); }
contract Interface_v3Impl { function contract() public virtual view returns (
