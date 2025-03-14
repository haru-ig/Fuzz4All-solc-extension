pragma solidity ^0.8.0;
contract Contract {
    Semantic public f;
    bool public flag;

    constructor() {
        semantic(f);
        semantic(f);
        semantic(f);
        semantic(f);
        semantic(f);
    }

    function semantic(Semantic memory _f) public {
        f.x = _f.x && _f.y && _f.z;
        flag = flag || (f.x || (flag && f.y || f.z));
    }
}
