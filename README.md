Install Grafana Beyla
```
$go install github.com/grafana/beyla/cmd/beyla@latest

go: downloading github.com/grafana/beyla v1.7.0
go: downloading github.com/caarlos0/env/v9 v9.0.0
go: downloading go.opentelemetry.io/collector/consumer v0.102.1
go: downloading k8s.io/api v0.29.4
go: downloading k8s.io/apimachinery v0.29.4
go: downloading k8s.io/client-go v0.29.4
go: downloading go.opentelemetry.io/contrib/detectors/aws/ec2 v1.28.0
go: downloading go.opentelemetry.io/contrib/detectors/azure/azurevm v0.0.1
go: downloading github.com/cilium/ebpf v0.12.3
go: downloading go.opentelemetry.io/collector v0.102.1
go: downloading go.opentelemetry.io/contrib/detectors/gcp v1.28.0
go: downloading github.com/mariomac/pipes v0.10.0
go: downloading go.opentelemetry.io/collector/component v0.102.1
go: downloading go.opentelemetry.io/collector/config/configgrpc v0.102.1
go: downloading go.opentelemetry.io/collector/config/confighttp v0.102.1
go: downloading go.opentelemetry.io/collector/config/configopaque v1.11.0
go: downloading go.opentelemetry.io/collector/config/configretry v1.11.0
go: downloading go.opentelemetry.io/collector/config/configtelemetry v0.102.1
go: downloading go.opentelemetry.io/collector/config/configtls v0.102.1
go: downloading go.opentelemetry.io/collector/exporter v0.102.1
go: downloading go.opentelemetry.io/collector/exporter/otlpexporter v0.102.1
go: downloading go.opentelemetry.io/collector/exporter/otlphttpexporter v0.102.1
go: downloading go.opentelemetry.io/collector/pdata v1.11.0
go: downloading go.opentelemetry.io/otel/exporters/otlp/otlpmetric/otlpmetricgrpc v1.28.0
go: downloading go.opentelemetry.io/otel/exporters/otlp/otlpmetric/otlpmetrichttp v1.28.0
go: downloading go.opentelemetry.io/otel/exporters/otlp/otlptrace v1.28.0
go: downloading go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc v1.28.0
go: downloading go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracehttp v1.28.0
go: downloading go.uber.org/zap v1.27.0
go: downloading github.com/gobwas/glob v0.2.3
go: downloading golang.org/x/net v0.26.0
go: downloading github.com/yl2chen/cidranger v1.0.2
go: downloading github.com/gavv/monotime v0.0.0-20190418164738-30dba4353424
go: downloading github.com/shirou/gopsutil/v3 v3.24.4
go: downloading go.opentelemetry.io/contrib/detectors/aws/eks v1.28.0
go: downloading github.com/prometheus/procfs v0.15.0
go: downloading github.com/aws/aws-sdk-go v1.54.13
go: downloading github.com/GoogleCloudPlatform/opentelemetry-operations-go/detectors/gcp v1.24.0
go: downloading go.opentelemetry.io/collector/confmap v0.102.1
go: downloading go.uber.org/multierr v1.11.0
go: downloading github.com/mostynb/go-grpc-compression v1.2.3
go: downloading go.opentelemetry.io/collector/config/configauth v0.102.1
go: downloading go.opentelemetry.io/collector/config/configcompression v1.11.0
go: downloading go.opentelemetry.io/collector/config/confignet v0.102.1
go: downloading go.opentelemetry.io/collector/config/internal v0.102.1
go: downloading go.opentelemetry.io/collector/extension/auth v0.102.1
go: downloading go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc v0.52.0
go: downloading github.com/imdario/mergo v0.3.15
go: downloading k8s.io/klog/v2 v2.130.1
go: downloading k8s.io/utils v0.0.0-20240502163921-fe8a2dddb1d0
go: downloading golang.org/x/term v0.21.0
go: downloading go.opentelemetry.io/collector/extension v0.102.1
go: downloading github.com/klauspost/compress v1.17.9
go: downloading github.com/rs/cors v1.10.1
go: downloading go.opentelemetry.io/proto/otlp v1.3.1
go: downloading google.golang.org/genproto/googleapis/rpc v0.0.0-20240701130421-f6361c86f094
go: downloading golang.org/x/exp v0.0.0-20230224173230-c95f2b4c22f2
go: downloading github.com/grafana/go-offsets-tracker v0.1.7
go: downloading golang.org/x/arch v0.7.0
go: downloading github.com/xwb1989/sqlparser v0.0.0-20180606152119-120387863bf2
go: downloading github.com/AlessandroPomponio/go-gibberish v0.0.0-20191004143433-a2d4156f0396
go: downloading github.com/tklauser/go-sysconf v0.3.13
go: downloading github.com/go-viper/mapstructure/v2 v2.0.0-alpha.1
go: downloading github.com/knadh/koanf/providers/confmap v0.1.0
go: downloading github.com/knadh/koanf/maps v0.1.1
go: downloading github.com/knadh/koanf/v2 v2.1.1
go: downloading github.com/hashicorp/go-version v1.7.0
go: downloading k8s.io/kube-openapi v0.0.0-20240620174524-b456828f718b
go: downloading sigs.k8s.io/yaml v1.4.0
go: downloading go.opentelemetry.io/collector/featuregate v1.11.0
go: downloading github.com/emicklei/go-restful/v3 v3.12.1
go: downloading github.com/go-openapi/swag v0.23.0
go: downloading github.com/go-openapi/jsonreference v0.21.0
go: downloading github.com/go-openapi/jsonpointer v0.21.0
```

Start instrument process
```
$BEYLA_PROMETHEUS_PORT=8999 PRINT_TRACES=true OPEN_PORT=8080 sudo -E beyla
```

Metric URL
* http://localhost:8999/metrics

Try to test
```
$curl http://localhost:8080/hello
$curl http://localhost:8080/bye
$while true; do curl "http://localhost:8080/service?delay=1s"; done
```

