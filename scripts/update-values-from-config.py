from requests import get
from ruamel.yaml import YAML

yaml = YAML()
yaml.preserve_quotes = True
yaml.explicit_start = True
yaml.explicit_end = False

config_raw = get("https://raw.githubusercontent.com/goauthentik/authentik/main/authentik/lib/default.yml").text
config = yaml.load(config_raw)

with open("charts/authentik/values.yaml", mode="r", encoding="utf-8") as _values:
    values = yaml.load(_values.read())

# The old config has higher priority over the upstream config
old_config = values["authentik"]
config.update(old_config)
values["authentik"] = config

with open("charts/authentik/values.yaml", mode="w", encoding="utf-8") as _values:
    yaml.dump(values, _values)
