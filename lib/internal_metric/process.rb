# frozen_string_literal: true

module DiscoursePrometheus::InternalMetric
  class Process < Base

    GAUGES = {
      heap_free_slots: "Free ruby heap slots",
      heap_live_slots: "Used ruby heap slots",
      v8_heap_size: "Total JavaScript V8 heap size (bytes)",
      v8_used_heap_size: "Total used JavaScript V8 heap size (bytes)",
      v8_physical_size: "Physical size consumed by V8 heaps",
      v8_heap_count: "Number of V8 contexts running",
      rss: "Total RSS used by process",
      deferred_jobs_queued: "Number of jobs queued in the deferred job queue",
      active_record_connections_count: "Total number of connections in ActiveRecord's connection pools"
    }

    COUNTERS = {
      major_gc_count: "Major GC operations by process",
      minor_gc_count: "Minor GC operations by process",
      total_allocated_objects: "Total number of allocateds objects by process",
    }

    attribute :type,
      :heap_free_slots,
      :heap_live_slots,
      :major_gc_count,
      :minor_gc_count,
      :total_allocated_objects,
      :rss,
      :v8_heap_size,
      :v8_used_heap_size,
      :v8_physical_size,
      :v8_heap_count,
      :pid,
      :created_at,
      :deferred_jobs_queued,
      :active_record_connections_count

    def initialize
    end
  end
end
