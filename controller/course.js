import { AllFetchDatas, fetch } from '../database/pg.js'
import QueryFetch from '../models/course.model.js'
export default {
  GET: async (req, res) => {
    if (req.params.id) {
      res.send({
        data: await fetch(QueryFetch.SELECTID, req.params.id),
      })
    } else {
      res.send({
        data: await AllFetchDatas(QueryFetch.SELECTALL),
      })
    }
  },
}
