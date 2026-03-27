# Changelog

## 0.24.1 (2026-03-27)

Full Changelog: [v0.24.0...v0.24.1](https://github.com/deeprails/deeprails-ruby-sdk/compare/v0.24.0...v0.24.1)

### Bug Fixes

* **internal:** correct multipart form field name encoding ([2574ab9](https://github.com/deeprails/deeprails-ruby-sdk/commit/2574ab9830ee7aa7147ca425f99a55a7f622b5a0))

## 0.24.0 (2026-03-25)

Full Changelog: [v0.23.0...v0.24.0](https://github.com/deeprails/deeprails-ruby-sdk/compare/v0.23.0...v0.24.0)

### Features

* **api:** manual updates ([5ef9233](https://github.com/deeprails/deeprails-ruby-sdk/commit/5ef9233307f25347f1fe5cb31d919b775e86018c))
* **api:** update run mode lists ([4dd6b35](https://github.com/deeprails/deeprails-ruby-sdk/commit/4dd6b35cfd44db08d215bcffcd82e0df013fdbc1))


### Bug Fixes

* **client:** always add content-length to post body, even when empty ([a13ed48](https://github.com/deeprails/deeprails-ruby-sdk/commit/a13ed487ebe8d61e23a91427b59568098fa9c509))
* **client:** loosen json header parsing ([5b586e4](https://github.com/deeprails/deeprails-ruby-sdk/commit/5b586e42540c7495a5a7a90b046f97bd80937a6a))
* properly mock time in ruby ci tests ([3d4a050](https://github.com/deeprails/deeprails-ruby-sdk/commit/3d4a05086397ebee972f3731c32c546a8680c359))


### Chores

* **ci:** add build step ([214a42f](https://github.com/deeprails/deeprails-ruby-sdk/commit/214a42f734b006bc8b121c1e7024e48978d0435c))
* **ci:** skip uploading artifacts on stainless-internal branches ([31cf2d4](https://github.com/deeprails/deeprails-ruby-sdk/commit/31cf2d4fc4f7cf22594abb421e85fc596bfebfe1))
* **docs:** remove www prefix ([5809c7c](https://github.com/deeprails/deeprails-ruby-sdk/commit/5809c7c3e4f530b4229837034c41fe991627cebe))
* **internal:** codegen related update ([963603e](https://github.com/deeprails/deeprails-ruby-sdk/commit/963603e86d5835158ef84320a712c4f688369924))
* **internal:** codegen related update ([729ecae](https://github.com/deeprails/deeprails-ruby-sdk/commit/729ecaebf5923f1c8fb3534af065422d57c93489))
* **internal:** codegen related update ([5d6fdf8](https://github.com/deeprails/deeprails-ruby-sdk/commit/5d6fdf835fb9189c925b6a4b7e6ab5be0bb5f6c6))
* **internal:** codegen related update ([3c60669](https://github.com/deeprails/deeprails-ruby-sdk/commit/3c606699d83fa50f2e89502c829bd2a3270848dc))
* **internal:** remove mock server code ([6da3225](https://github.com/deeprails/deeprails-ruby-sdk/commit/6da3225fe66a6f2e1519b3a5eba404483e0c7092))
* **internal:** tweak CI branches ([ce92004](https://github.com/deeprails/deeprails-ruby-sdk/commit/ce920042eb923f09c87bfb8d7c0b92e79cc817fd))
* update mock server docs ([d247ade](https://github.com/deeprails/deeprails-ruby-sdk/commit/d247ade6db1f06e5d56a815cac033b0c5ed7e3c7))

## 0.23.0 (2026-01-20)

Full Changelog: [v0.22.0...v0.23.0](https://github.com/deeprails/deeprails-ruby-sdk/compare/v0.22.0...v0.23.0)

### Features

* **api:** manual updates ([dbfbe16](https://github.com/deeprails/deeprails-ruby-sdk/commit/dbfbe16ac8b8bef8066b3a1b12ffc1d1b6e793d3))


### Chores

* **internal:** codegen related update ([3cae355](https://github.com/deeprails/deeprails-ruby-sdk/commit/3cae35599062af95a670c3bb23ab52ee5ccb5fe6))
* **internal:** codegen related update ([cbd8b12](https://github.com/deeprails/deeprails-ruby-sdk/commit/cbd8b12f0ddfd8f0ec1e15930095ede2a5bc1fe1))
* **internal:** update `actions/checkout` version ([b24ab56](https://github.com/deeprails/deeprails-ruby-sdk/commit/b24ab5603ff3fc351e833ecc41522c6a4065908e))

## 0.22.0 (2025-12-23)

Full Changelog: [v0.21.0...v0.22.0](https://github.com/deeprails/deeprails-ruby-sdk/compare/v0.21.0...v0.22.0)

### Features

* **api:** add key improvements and analysis of failures ([8cc372b](https://github.com/deeprails/deeprails-ruby-sdk/commit/8cc372b0f1cf6b6c7d5f55b6f90d3a27ac74b76c))


### Bug Fixes

* calling `break` out of streams should be instantaneous ([5f7ac38](https://github.com/deeprails/deeprails-ruby-sdk/commit/5f7ac38fa7016361c356072867dc3a025b3c3a92))
* issue where json.parse errors when receiving HTTP 204 with nobody ([f7b4a02](https://github.com/deeprails/deeprails-ruby-sdk/commit/f7b4a026be2ddc89a52eedc4643c7e2e51f76e5d))

## 0.21.0 (2025-12-15)

Full Changelog: [v0.20.0...v0.21.0](https://github.com/deeprails/deeprails-ruby-sdk/compare/v0.20.0...v0.21.0)

### Features

* **api:** add precision plus codex ([d67ca44](https://github.com/deeprails/deeprails-ruby-sdk/commit/d67ca4443d30fad4211caf43f0d7a63adf4f8b2b))

## 0.20.0 (2025-12-07)

Full Changelog: [v0.19.0...v0.20.0](https://github.com/deeprails/deeprails-ruby-sdk/compare/v0.19.0...v0.20.0)

### Features

* **api:** Expand update endpoints ([faaf87b](https://github.com/deeprails/deeprails-ruby-sdk/commit/faaf87bc835773fe50e20c43a8ca59b69f4d3b2e))
* **api:** manual updates ([b8a55ea](https://github.com/deeprails/deeprails-ruby-sdk/commit/b8a55eafa68bed34063f8745a8d460266d1a30d1))

## 0.19.0 (2025-12-07)

Full Changelog: [v0.18.1...v0.19.0](https://github.com/deeprails/deeprails-ruby-sdk/compare/v0.18.1...v0.19.0)

### Features

* **api:** added context_awareness and context ([9562c79](https://github.com/deeprails/deeprails-ruby-sdk/commit/9562c797fdfd5fdb45b28a4b428b005017998c55))

## 0.18.1 (2025-11-21)

Full Changelog: [v0.18.0...v0.18.1](https://github.com/deeprails/deeprails-ruby-sdk/compare/v0.18.0...v0.18.1)

### Chores

* explicitly require "base64" gem ([99d2fb5](https://github.com/deeprails/deeprails-ruby-sdk/commit/99d2fb51770004bb14a8f15370956852481eb233))

## 0.18.0 (2025-11-20)

Full Changelog: [v0.17.0...v0.18.0](https://github.com/deeprails/deeprails-ruby-sdk/compare/v0.17.0...v0.18.0)

### Features

* **api:** fix files upload parameter ([65d38fa](https://github.com/deeprails/deeprails-ruby-sdk/commit/65d38fa89d23857fad01820282af44e8f5a63458))
* **api:** Minor changes and updates to examples ([4b690d4](https://github.com/deeprails/deeprails-ruby-sdk/commit/4b690d41df9fa9ad16c34015fb806a9a7ce83bd7))

## 0.17.0 (2025-11-19)

Full Changelog: [v0.16.0...v0.17.0](https://github.com/deeprails/deeprails-ruby-sdk/compare/v0.16.0...v0.17.0)

### Features

* **api:** update package name casing ([94dcce7](https://github.com/deeprails/deeprails-ruby-sdk/commit/94dcce764af00fa51541e4fb2217eb2e743efe61))

## 0.16.0 (2025-11-18)

Full Changelog: [v0.15.0...v0.16.0](https://github.com/deeprails/deeprails-ruby-sdk/compare/v0.15.0...v0.16.0)

### Features

* **api:** revert docs URL ([a7f8683](https://github.com/deeprails/deeprails-ruby-sdk/commit/a7f86836399d683ebd49fed5761850a2615cd0a6))

## 0.15.0 (2025-11-18)

Full Changelog: [v0.14.0...v0.15.0](https://github.com/deeprails/deeprails-ruby-sdk/compare/v0.14.0...v0.15.0)

### Features

* **api:** update docs URL ([eb68c00](https://github.com/deeprails/deeprails-ruby-sdk/commit/eb68c00ab3439f44feb7de07a2721bc808d0bfed))

## 0.14.0 (2025-11-12)

Full Changelog: [v0.13.0...v0.14.0](https://github.com/deeprails/deeprails-ruby-sdk/compare/v0.13.0...v0.14.0)

### Features

* **api:** remove dev server ([59d5dfb](https://github.com/deeprails/deeprails-ruby-sdk/commit/59d5dfbbae7a7cfc6d5a01893a8397c287f47834))

## 0.13.0 (2025-11-11)

Full Changelog: [v0.12.0...v0.13.0](https://github.com/deeprails/deeprails-ruby-sdk/compare/v0.12.0...v0.13.0)

### Features

* **api:** add retrieve monitor event and examples ([3179cc0](https://github.com/deeprails/deeprails-ruby-sdk/commit/3179cc06df9d92f96abdb4f162887697e133c688))

## 0.12.0 (2025-11-10)

Full Changelog: [v0.11.0...v0.12.0](https://github.com/deeprails/deeprails-ruby-sdk/compare/v0.11.0...v0.12.0)

### Features

* **api:** Mass restructuring of API, including response bodies and naming schemes ([f52f6ee](https://github.com/deeprails/deeprails-ruby-sdk/commit/f52f6ee3484c15c0f403a2fd615552e6926d0626))


### Bug Fixes

* better thread safety via early initializing SSL store during HTTP client creation ([461a0a4](https://github.com/deeprails/deeprails-ruby-sdk/commit/461a0a45e6914b0376077215f353eb83685edc5f))


### Chores

* bump dependency version and update sorbet types ([444f9a0](https://github.com/deeprails/deeprails-ruby-sdk/commit/444f9a073d6a85bd83f64c201edfc2065f518bc8))

## 0.11.0 (2025-11-02)

Full Changelog: [v0.10.0...v0.11.0](https://github.com/deeprails/deeprails-ruby-sdk/compare/v0.10.0...v0.11.0)

### Features

* **api:** restructure monitor service ([9682519](https://github.com/deeprails/deeprails-ruby-sdk/commit/968251927003819495ee8c2e5ec9c9276f0a298d))

## 0.10.0 (2025-10-30)

Full Changelog: [v0.9.0...v0.10.0](https://github.com/deeprails/deeprails-ruby-sdk/compare/v0.9.0...v0.10.0)

### Features

* **api:** Add file and web search as extended ai capabilities ([9c3e153](https://github.com/deeprails/deeprails-ruby-sdk/commit/9c3e153565a92a3e4228ffd1193cff119f7acbfe))
* **api:** manual updates ([7c6bd65](https://github.com/deeprails/deeprails-ruby-sdk/commit/7c6bd65a0fdafc880b467aa2ab5bc587d300bf76))

## 0.9.0 (2025-10-29)

Full Changelog: [v0.8.0...v0.9.0](https://github.com/deeprails/deeprails-ruby-sdk/compare/v0.8.0...v0.9.0)

### Features

* **api:** remove evaluate api ([733236c](https://github.com/deeprails/deeprails-ruby-sdk/commit/733236c71a7bad030caea5ebe42a3c8061e05ec6))
* **api:** remove evaluate references ([de622dd](https://github.com/deeprails/deeprails-ruby-sdk/commit/de622dd89f3c14f5db366bd425c1e4c68bc59886))

## 0.8.0 (2025-10-24)

Full Changelog: [v0.7.0...v0.8.0](https://github.com/deeprails/deeprails-ruby-sdk/compare/v0.7.0...v0.8.0)

### Features

* **api:** remove apiresponse from monitor ([c26404c](https://github.com/deeprails/deeprails-ruby-sdk/commit/c26404cf6e750823780141362084731adf50b089))
* handle thread interrupts in the core HTTP client ([7c7e928](https://github.com/deeprails/deeprails-ruby-sdk/commit/7c7e928f1ec5bb401bce8200ec186e8c080de890))

## 0.7.0 (2025-10-22)

Full Changelog: [v0.6.0...v0.7.0](https://github.com/deeprails/deeprails-ruby-sdk/compare/v0.6.0...v0.7.0)

### Features

* **api:** manual updates ([3f3207a](https://github.com/deeprails/deeprails-ruby-sdk/commit/3f3207ad9b0e71ed6911c94cf6850a4d35a8d295))

## 0.6.0 (2025-10-22)

Full Changelog: [v0.5.0...v0.6.0](https://github.com/deeprails/deeprails-ruby-sdk/compare/v0.5.0...v0.6.0)

### Features

* **api:** update defend naming and data structures ([e345a29](https://github.com/deeprails/deeprails-ruby-sdk/commit/e345a293b74cc3bfedcfcf8b5d9c9a834f82a69b))

## 0.5.0 (2025-10-20)

Full Changelog: [v0.4.0...v0.5.0](https://github.com/deeprails/deeprails-ruby-sdk/compare/v0.4.0...v0.5.0)

### Features

* **api:** readme example update ([4cdb59b](https://github.com/deeprails/deeprails-ruby-sdk/commit/4cdb59b5a0c9a5af34851fbd7885551a6253cf69))

## 0.4.0 (2025-10-16)

Full Changelog: [v0.3.1...v0.4.0](https://github.com/deeprails/deeprails-ruby-sdk/compare/v0.3.1...v0.4.0)

### Features

* **api:** adding support for system_prompt and ground_truth ([6b292f8](https://github.com/deeprails/deeprails-ruby-sdk/commit/6b292f8e125423e582f3937c343934e916e94ff6))

## 0.3.1 (2025-10-16)

Full Changelog: [v0.3.0...v0.3.1](https://github.com/deeprails/deeprails-ruby-sdk/compare/v0.3.0...v0.3.1)

### Bug Fixes

* absolutely qualified uris should always override the default ([0792ee8](https://github.com/deeprails/deeprails-ruby-sdk/commit/0792ee8118dfedf1d4aff38c9373829cdf307a07))
* should not reuse buffers for `IO.copy_stream` interop ([f2e7d68](https://github.com/deeprails/deeprails-ruby-sdk/commit/f2e7d681dcef52467e0d6b94074cff2869385164))

## 0.3.0 (2025-10-10)

Full Changelog: [v0.2.1...v0.3.0](https://github.com/deeprails/deeprails-ruby-sdk/compare/v0.2.1...v0.3.0)

### Features

* **api:** manual updates ([986412f](https://github.com/deeprails/deeprails-ruby-sdk/commit/986412f6888691af0abdec609a5d456bdac2c1e9))

## 0.2.1 (2025-10-09)

Full Changelog: [v0.2.0...v0.2.1](https://github.com/deeprails/deeprails-ruby-sdk/compare/v0.2.0...v0.2.1)

### Chores

* ignore linter error for tests having large collections ([202c9e1](https://github.com/deeprails/deeprails-ruby-sdk/commit/202c9e1977aaebb7e09883564d4694a2d41e4416))

## 0.2.0 (2025-10-08)

Full Changelog: [v0.1.0...v0.2.0](https://github.com/deeprails/deeprails-ruby-sdk/compare/v0.1.0...v0.2.0)

### Features

* **api:** adding code samples ([9597e09](https://github.com/deeprails/deeprails-ruby-sdk/commit/9597e09967d659172d52c3935b3dd8f3e0018783))


### Chores

* sync repo ([a33597d](https://github.com/deeprails/deeprails-ruby-sdk/commit/a33597d5677081f50207f926f9950d9914700fb3))

## 0.1.0 (2025-10-07)

Full Changelog: [v0.0.2...v0.1.0](https://github.com/deeprails/deeprails-ruby-sdk/compare/v0.0.2...v0.1.0)

### Features

* **api:** manual updates ([4e6d952](https://github.com/deeprails/deeprails-ruby-sdk/commit/4e6d952cf63524c240d4c11044884af0b1a54d06))

## 0.0.2 (2025-10-07)

Full Changelog: [v0.0.1...v0.0.2](https://github.com/deeprails/deeprails-ruby-sdk/compare/v0.0.1...v0.0.2)

### Chores

* configure new SDK language ([93aaa3f](https://github.com/deeprails/deeprails-ruby-sdk/commit/93aaa3ff8fd84a29855e7adc2e341e9ef37d76a4))
* update SDK settings ([a2721ab](https://github.com/deeprails/deeprails-ruby-sdk/commit/a2721ab0f38e834aa60a88945a0cb5fbb1c37917))
