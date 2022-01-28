![STRATEG](https://strateg.stat.gov.pl/strateg_small.png)

The STRATEG system is a publicly accessible system, designed to facilitate the process of monitoring the development and evaluating the effects of actions undertaken to strengthen social cohesion. The database contains a comprehensive set of key measures to monitor (mainly annual) development at the national level, as well as at lower levels of territorial division. To ensure international comparability, the database also contains the main indicators for the EU, its member states and regions at NUTS 2 level.

The system is also used as a repository of indicators relating to various strategies – starting from the Europe 2020 Strategy of the EU and the Strategy for Responsible Development, through 9 integrated strategies concerning economic efficiency and innovation, transport, energy security and environment, regional development, human capital, social capital, sustainable development of rural areas, agriculture and fishing industry, efficient state and national security. In addition, the system stores information on indicators for regional strategies, Partnership Agreement, National and Regional Operational Programmes, Integrated Territorial Investments Strategies, National Urban Policy as well as Governmental Programme Accessibility Plus.

[The Strateg API application](https://strateg.stat.gov.pl/apidocs/?lang=en) was created to extend the availability of the STRATEG system. The API has been prepared in accordance with currently used standards and allows to download the full range of data in JSON format, i.e. data with metadata in both Polish and English versions.



## Installation

Add this line to your application's Gemfile:

```ruby
gem 'strateg'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install strateg

## Usage

### Strategies and programmes

#### Gets list of strategies and operational programmes

```ruby
Strateg.list_of_strategies_and_operational_programmes
```



#### Gets strategies data

```ruby
Strateg.strategy_data(strategy_id)
```

| Variables     | Data type     | Required |
|---------------|---------------|----------|
| ```strategy_id```  |  ```Integer``` | True     |


### Cohesion policies
#### Gets cohesion policies list

```ruby
Strateg.cohesion_policies_list
```

#### Gets cohesion policy data

```ruby
Strateg.cohesion_policy_data(cohesion_id)
```

| Variables     | Data type     | Required |
|---------------|---------------|----------|
| ```cohesion_id```  |  ```Integer``` | True     |

### Statistics by theme


#### Gets list of thematic areas

```ruby
Strateg.list_of_thematic_areas
```

#### Gets data for the thematic area

```ruby
Strateg.thematic_area_data(area_id)
```

| Variables     | Data type     | Required |
|---------------|---------------|----------|
| ```area_id```  |  ```Integer``` | True     |

### Territorial data

#### Gets the list of territorial units from the portrait jt

```ruby
Strateg.list_of_territorial_units
```

#### Gets territory data

```ruby
Strateg.territory_data(territory_code)
```

| Variables     | Data type     | Required |
|---------------|---------------|----------|
| ```territory_code```  |  ```Integer``` | True     |


### Indicators

#### Gets list of indicators

```ruby
Strateg.list_of_indicators
```

#### Gets available indicator's dimensions

```ruby
Strateg.available_indicators_dimensions(area_id)
```

| Variables     | Data type     | Required |
|---------------|---------------|----------|
| ```area_id```  |  ```Integer``` | True     |


#### Gets indicator's dimension data

```ruby
Strateg.indicators_dimension_data(indicator_id, params = {})
```

| Variables          | Data type     | Required |
|--------------------|---------------|----------|
| ```indicator_id``` | ```Integer``` | True     |
| ```level_id```     | ```String```  | False    |
| ```place_id```     | ```Integer``` | False    |
| ```section_id```     | ```Integer``` | False    |
| ```sex_id```     | ```Integer``` | False    |

_**level_id [String]**_

territorial level of data
- 0 - EU total and countries level
- 2 - Voivodships Level
- 3 - Regions Level
- 4 - Subregions Level
- 5 - Powiats Level
- 6 - Gminas Level
- M - National Urban Policy
- O - Functional areas
- Z - Integrated Territorial Investments

_**place_id [Integer]**_
- 1 - total
- 2 - urban
- 3 - rural

_**section_id [Integer]**_

id of age group: <1, 39> and <1001, 1003>; 1 means 'total'

_**sex_id [Integer]**_
- 1 - total
- 2 - female
- 3 - male


#### Gets real data

```ruby
Strateg.real_data(dimension_id, indicator_id, params = {})
```

| Variables          | Data type     | Required |
|--------------------|---------------|----------|
| ```dimension_id``` | ```Integer``` | True     |
| ```indicator_id```     | ```Integer``` | True     |
| ```territory_code```     | ```String``` | False    |
| ```level_id```     | ```String``` | False     |

### Indicators metrics

#### Gets indicator's metadata

```ruby
Strateg.indicators_metadata(indicator_id, params = {})
```

| Variables          | Data type     | Required |
|--------------------|---------------|----------|
| ```indicator_id``` | ```Integer``` | True     |

### Strategies and programmes coordinators

#### Gets coordinators data

```ruby
Strateg.indicators_metadata(strategy_id, params = {})
```

| Variables          | Data type     | Required |
|--------------------|---------------|----------|
| ```strategy_id``` | ```Integer``` | True     |

## Development

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kupolak/strateg. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/kupolak/strateg/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Strateg project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/kupolak/strateg/blob/master/CODE_OF_CONDUCT.md).
