pragma solidity ^0.8.0;
contract Caller {
    bytes32 public namehash;
    string public name;
    uint8 public major = 2;
    uint8 public minor = 5;
    uint8 public patch = 50;
    uint8 public epoch = 50;
    uint8 public release = 31;
    uint8 public releaseCandidate = 40;

    constructor() public {
        require(
        (keccak256(abi.encode(namehash)) + minor) >= major,
        "Caller: Must be on major and minor release."
        );
        if (release == 31) {
            require(releaseCandidate >= epoch, "Caller: must be in first or second epoch");
        }
    }

    function _call(address) internal {

        emit Message("called fallback");
        require(true, "Caller: Fallback function should be defined.");
    }
    function _fallback2(address) internal {

        emit Message("called payableFallback");
        require(true, "Caller: must be a fallback");
    }

    constructor (
        string memory _name,
        uint8 major_,
        uint8 minor_,
        uint8 patch_,
        uint8 _epoch,
        uint8 _release
    ) public {

    }
    function getName() public view returns (string memory name_) {
        (name_, ) = abi.readStorage(_namehash);
    }
    function getNamehash() public view returns (bytes32 namehash_) {
        namehash_ = keccak256(abi.encodePacked(name, minor));
    }
    function _releaseCandidate() internal view returns (bool _releaseCandidate_) {
        _releaseCandidate_ = ((releaseCandidate && release) ||
            (snapshot || committees || 0 == minor  || 0 == patch));
    }
    function getEpoch() public view returns (uint8 epoch_) {
        epoch_ = snapshot || committees || 0 == minor? minor : patch;
    }
    function canCall() public view returns (bool canCall_) {
        uint8 major_;
        uint8 minor_;
        uint8 patch_;
        (minor_, patch_) = abi.readStorage(namehash);
        (major_, ) = abi.readStorage(keccak256(abi.encode(namehash, 0)));
        canCall_ = ((snapshot >= 0 && release >= 31) ||
            (patch >= 50 || major <= major_ || minor <= minor_ ||
                ((epoch_ >= 31 || 0 == minor_ && snapshot >= 0) && patch == 0)));
    }
}
