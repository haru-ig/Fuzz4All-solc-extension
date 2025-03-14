pragma solidity ^0.8.0;
contract SemVer2 {
    struct SemVer {
        uint major;
        uint minor;
        uint patch;
        string pre;
        string build;
        bool isPreRelease;
        bool isBuild;
        bool isSemVer;

        constructor(uint major_, uint minor_, uint patch_) {
            isSemVer = true;
            major = major_;
            minor = minor_;
            patch = patch_;
        }

        function getSemVer() public pure returns (SemVer){
            return SemVer(major, minor, patch);
        }
    }

    constructor(uint _major, uint _minor, uint _patch) {
        SemVer mem = SemVer(_major, _minor, _patch);
    }
}
