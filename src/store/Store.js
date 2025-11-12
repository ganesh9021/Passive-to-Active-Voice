import { configureStore, createSlice } from "@reduxjs/toolkit";

const firstSlice = createSlice({
  name: "firstStore",
  initialState: {
    lang: "en",
  },
  reducers: {
    changeLang: (state, action) => {
      state.lang = action.payload;
    },
  },
});

export const { changeLang } = firstSlice.actions;

//firstSlice.actions;
const firstStoreReducer = firstSlice.reducer;

export default configureStore({
  reducer: { firstStore: firstStoreReducer },
});
