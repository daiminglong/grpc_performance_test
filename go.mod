module github.com/daiminglong/grpc_performance_test

go 1.13

require (
	github.com/golang/protobuf v1.5.2
	golang.org/x/net v0.0.0-20201006153459-a7d1128ccaa0
	google.golang.org/grpc v1.27.0
)

replace (
	golang.org/x/crypto v0.0.0 => github.com/golang/crypto v0.0.0-20190411191339-88737f569e3a
	golang.org/x/exp v0.0.0-20190121172915-509febef88a4 => github.com/golang/exp v0.0.0-20190411193353-0480eff6dd7c
	golang.org/x/exp v0.0.0-20190306152737-a1d7652674e8 => github.com/golang/exp v0.0.0-20190411193353-0480eff6dd7c
	golang.org/x/image v0.0.0-20190227222117-0694c2d4d067 => github.com/golang/image v0.0.0-20190321063152-3fc05d484e9f
	golang.org/x/lint v0.0.0-20181026193005-c67002cb31c3 => github.com/golang/lint v0.0.0-20190409202823-959b441ac422
	golang.org/x/lint v0.0.0-20190227174305-5b3e6a55c961 => github.com/golang/lint v0.0.0-20190409202823-959b441ac422
	golang.org/x/mobile v0.0.0-20190312151609-d3739f865fa6 => github.com/golang/mobile v0.0.0-20190412202009-28c689b77b5f
	golang.org/x/net v0.0.0-20180826012351-8a410e7b638d => github.com/golang/net v0.0.0-20190404232315-eb5bcb51f2a3
	golang.org/x/net v0.0.0-20190213061140-3a22650c66bd => github.com/golang/net v0.0.0-20190404232315-eb5bcb51f2a3
	golang.org/x/net v0.0.0-20190311183353-d8887717615a => github.com/golang/net v0.0.0-20190404232315-eb5bcb51f2a3
	golang.org/x/sync v0.0.0-20190227155943-e225da77a7e6 => github.com/golang/sync v0.0.0-20190412183630-56d357773e84
	golang.org/x/sys v0.0.0-20180830151530-49385e6e1522 => github.com/golang/sys v0.0.0-20190412213103-97732733099d
	golang.org/x/sys v0.0.0-20190312061237-fead79001313 => github.com/golang/sys v0.0.0-20190412213103-97732733099d
	golang.org/x/text v0.3.0 => github.com/golang/text v0.3.0
	golang.org/x/tools v0.0.0-20190114222345-bf090417da8b => github.com/golang/tools v0.0.0-20190411180116-681f9ce8ac52
	golang.org/x/tools v0.0.0-20190226205152-f727befe758c => github.com/golang/tools v0.0.0-20190411180116-681f9ce8ac52
	golang.org/x/tools v0.0.0-20190312151545-0bb0c0a6e846 => github.com/golang/tools v0.0.0-20190411180116-681f9ce8ac52
	google.golang.org/genproto v0.0.0-20180817151627-c66870c02cf8 => github.com/google/go-genproto v0.0.0-20190404172233-64821d5d2107
	google.golang.org/grpc v1.19.0 => github.com/grpc/grpc-go v1.19.0
)
