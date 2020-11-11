explore: treez {}

view: treez {
  sql_table_name: `bigquery-public-data.new_york_trees.tree_census_2015`
      ;;


  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: tree_id {
    type: number
    sql: ${TABLE}.tree_id ;;
  }

  dimension: block_id {
    type: number
    sql: ${TABLE}.block_id ;;
  }

  dimension: created_at {
    type: date
    datatype: date
    sql: ${TABLE}.created_at ;;
  }

  dimension: tree_dbh {
    type: number
    sql: ${TABLE}.tree_dbh ;;
  }

  dimension: stump_diam {
    type: number
    sql: ${TABLE}.stump_diam ;;
  }

  dimension: curb_loc {
    type: string
    sql: ${TABLE}.curb_loc ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: health {
    type: string
    sql: ${TABLE}.health ;;
  }

  dimension: spc_latin {
    type: string
    sql: ${TABLE}.spc_latin ;;
  }

  dimension: spc_common {
    type: string
    sql: ${TABLE}.spc_common ;;
  }

  dimension: steward {
    type: string
    sql: ${TABLE}.steward ;;
  }

  dimension: guards {
    type: string
    sql: ${TABLE}.guards ;;
  }

  dimension: sidewalk {
    type: string
    sql: ${TABLE}.sidewalk ;;
  }

  dimension: user_type {
    type: string
    sql: ${TABLE}.user_type ;;
  }

  dimension: problems {
    type: string
    sql: ${TABLE}.problems ;;
  }

  dimension: root_stone {
    type: string
    sql: ${TABLE}.root_stone ;;
  }

  dimension: root_grate {
    type: string
    sql: ${TABLE}.root_grate ;;
  }

  dimension: root_other {
    type: string
    sql: ${TABLE}.root_other ;;
  }

  dimension: trunk_wire {
    type: string
    sql: ${TABLE}.trunk_wire ;;
  }

  dimension: trnk_light {
    type: string
    sql: ${TABLE}.trnk_light ;;
  }

  dimension: trnk_other {
    type: string
    sql: ${TABLE}.trnk_other ;;
  }

  dimension: brch_light {
    type: string
    sql: ${TABLE}.brch_light ;;
  }

  dimension: brch_shoe {
    type: string
    sql: ${TABLE}.brch_shoe ;;
  }

  dimension: brch_other {
    type: string
    sql: ${TABLE}.brch_other ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: zipcode {
    type: number
    sql: ${TABLE}.zipcode ;;
  }

  dimension: zip_city {
    type: string
    sql: ${TABLE}.zip_city ;;
  }

  dimension: cb_num {
    type: number
    sql: ${TABLE}.cb_num ;;
  }

  dimension: borocode {
    type: number
    sql: ${TABLE}.borocode ;;
  }

  dimension: boroname {
    type: string
    sql: ${TABLE}.boroname ;;
  }

  dimension: cncldist {
    type: number
    sql: ${TABLE}.cncldist ;;
  }

  dimension: st_assem {
    type: number
    sql: ${TABLE}.st_assem ;;
  }

  dimension: st_senate {
    type: number
    sql: ${TABLE}.st_senate ;;
  }

  dimension: nta {
    type: string
    sql: ${TABLE}.nta ;;
  }

  dimension: nta_name {
    type: string
    sql: ${TABLE}.nta_name ;;
  }

  dimension: boro_ct {
    type: number
    sql: ${TABLE}.boro_ct ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: x_sp {
    type: number
    sql: ${TABLE}.x_sp ;;
  }

  dimension: y_sp {
    type: number
    sql: ${TABLE}.y_sp ;;
  }

  dimension: location {
    type: location
    sql_latitude: ${TABLE}.latitude ;;
    sql_longitude: ${TABLE}.longitude ;;
  }

  dimension: geo_location {
    type: string
    sql: ST_GEOGPOINT(${longitude}, ${latitude}) ;;
  }

  set: detail {
    fields: [
      tree_id,
      block_id,
      created_at,
      tree_dbh,
      stump_diam,
      curb_loc,
      status,
      health,
      spc_latin,
      spc_common,
      steward,
      guards,
      sidewalk,
      user_type,
      problems,
      root_stone,
      root_grate,
      root_other,
      trunk_wire,
      trnk_light,
      trnk_other,
      brch_light,
      brch_shoe,
      brch_other,
      address,
      zipcode,
      zip_city,
      cb_num,
      borocode,
      boroname,
      cncldist,
      st_assem,
      st_senate,
      nta,
      nta_name,
      boro_ct,
      state,
      latitude,
      longitude,
      x_sp,
      y_sp,
      location
    ]
  }
}
