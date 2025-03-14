pragma solidity ^0.8.0;
struct Semantic {
    bool x;
}
pragma solidity ^0.8.0;
modifier SemanticsChecked {
    Semantic s;

    s.x = true;
    s.y = true;
    s.z = true;
    s.y_ = true;
    s.z_ = true;

    _;
}
